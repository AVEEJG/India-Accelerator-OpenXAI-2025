# app.py
from flask import Flask, request, jsonify, render_template
from groq import Groq
import os

app = Flask(__name__)



# Initialize Groq client
client = Groq(api_key=GROQ_API_KEY)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/summarize", methods=["POST"])
def summarize():
    data = request.get_json(force=True)
    text = data.get("text", "").strip()

    if not text:
        return jsonify({"error": "No text provided"}), 400

    try:
        response = client.chat.completions.create(
            messages=[
                {"role": "system", "content": "You are a helpful assistant that provides concise summaries."},
                {"role": "user", "content": f"Summarize the following text in clear, simple language:\n\n{text}"}
            ],
            model="llama3-70b-8192"  # you may adjust model if needed
        )
        summary = response.choices[0].message.content.strip()
        return jsonify({"summary": summary, "provider": "ChatGroq"})
    except Exception as e:
        return jsonify({"error": f"Groq API error: {str(e)}"}), 500

if __name__ == "__main__":
    print("🔧 Groq Summarizer running on http://127.0.0.1:5000/")
    app.run(debug=True, port=5000)
