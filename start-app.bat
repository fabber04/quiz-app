@echo off
echo Starting Quiz App - Full Stack Application
echo.

echo Starting Python Backend...
cd backend
start "Quiz Backend" cmd /k "python app.py"
cd ..

echo.
echo Starting React Frontend...
start "Quiz Frontend" cmd /k "npm start"

echo.
echo Both servers are starting...
echo Backend will be available at: http://localhost:5000
echo Frontend will be available at: http://localhost:3000
echo.
echo Press any key to exit this script...
pause >nul
