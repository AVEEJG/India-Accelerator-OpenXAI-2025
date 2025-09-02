<<<<<<< HEAD
@echo off
echo 🚀 Installing dependencies for all template apps...
echo.

set TEMPLATES=template-app-GAMEJAM-TRACK/nextjs-app template-app-SOUNDWAVE-TRACK/nextjs-app template-app-TEXTSTREAM-TRACK/nextjs-app template-app-VISION-TRACK/nextjs-app

for %%t in (%TEMPLATES%) do (
    echo 📦 Installing %%t...
    
    if exist "%%t" (
        cd "%%t"
        
        if exist "package.json" (
            call npm install
            if errorlevel 1 (
                echo ❌ Failed to install %%t
            ) else (
                echo ✅ %%t installed successfully!
            )
        ) else (
            echo ⚠️  No package.json found in %%t
        )
        
        cd ..\..
    ) else (
        echo ⚠️  Directory %%t not found
    )
    
    echo.
)

echo 🎉 Installation complete!
echo.
echo To run a specific template:
echo   cd template-app-[TRACK-NAME]/nextjs-app
echo   npm run dev
echo.
echo Available templates:
echo   🎮 GAMEJAM-TRACK    - Game development template
echo   🎵 SOUNDWAVE-TRACK  - Audio and voice template
echo   💬 TEXTSTREAM-TRACK - Chat and text streaming template
echo   👁️  VISION-TRACK     - Computer vision template

=======
@echo off
echo 🚀 Installing dependencies for all template apps...
echo.

set TEMPLATES=template-app-GAMEJAM-TRACK/nextjs-app template-app-SOUNDWAVE-TRACK/nextjs-app template-app-TEXTSTREAM-TRACK/nextjs-app template-app-VISION-TRACK/nextjs-app

for %%t in (%TEMPLATES%) do (
    echo 📦 Installing %%t...
    
    if exist "%%t" (
        cd "%%t"
        
        if exist "package.json" (
            call npm install
            if errorlevel 1 (
                echo ❌ Failed to install %%t
            ) else (
                echo ✅ %%t installed successfully!
            )
        ) else (
            echo ⚠️  No package.json found in %%t
        )
        
        cd ..\..
    ) else (
        echo ⚠️  Directory %%t not found
    )
    
    echo.
)

echo 🎉 Installation complete!
echo.
echo To run a specific template:
echo   cd template-app-[TRACK-NAME]/nextjs-app
echo   npm run dev
echo.
echo Available templates:
echo   🎮 GAMEJAM-TRACK    - Game development template
echo   🎵 SOUNDWAVE-TRACK  - Audio and voice template
echo   💬 TEXTSTREAM-TRACK - Chat and text streaming template
echo   👁️  VISION-TRACK     - Computer vision template

>>>>>>> main
pause 