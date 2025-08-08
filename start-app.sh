#!/bin/bash

echo "Starting Quiz App - Full Stack Application"
echo

echo "Starting Python Backend..."
cd backend
python app.py &
BACKEND_PID=$!
cd ..

echo
echo "Starting React Frontend..."
npm start &
FRONTEND_PID=$!

echo
echo "Both servers are starting..."
echo "Backend will be available at: http://localhost:5000"
echo "Frontend will be available at: http://localhost:3000"
echo
echo "Press Ctrl+C to stop both servers..."

# Wait for user to stop the servers
trap "echo 'Stopping servers...'; kill $BACKEND_PID $FRONTEND_PID; exit" INT
wait
