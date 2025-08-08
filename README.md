# Quiz App - Full Stack Application

A modern quiz application built with **Python Flask** backend and **React** frontend.

## 🏗️ Architecture

- **Backend**: Python Flask API with CORS support
- **Frontend**: React.js with modern UI/UX
- **Communication**: RESTful API between frontend and backend

## 📁 Project Structure

```
quiz-app/
├── backend/                 # Python Flask backend
│   ├── app.py              # Main Flask application
│   ├── requirements.txt    # Python dependencies
│   └── README.md          # Backend documentation
├── src/                    # React frontend
│   ├── App.js             # Main React component
│   ├── App.css            # Styling
│   └── ...
├── package.json           # Frontend dependencies
└── README.md             # This file
```

## 🚀 Quick Start

### Prerequisites

- **Python 3.8+** and **pip**
- **Node.js 14+** and **npm**

### Backend Setup

1. **Navigate to backend directory:**
   ```bash
   cd backend
   ```

2. **Create virtual environment (recommended):**
   ```bash
   python -m venv venv
   # On Windows:
   venv\Scripts\activate
   # On macOS/Linux:
   source venv/bin/activate
   ```

3. **Install Python dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Run the Flask server:**
   ```bash
   python app.py
   ```

   The backend will start on `http://localhost:5000`

### Frontend Setup

1. **Install Node.js dependencies:**
   ```bash
   npm install
   ```

2. **Start the React development server:**
   ```bash
   npm start
   ```

   The frontend will start on `http://localhost:3000`

## 🎯 Features

### Backend Features
- ✅ RESTful API endpoints
- ✅ CORS support for cross-origin requests
- ✅ Quiz management (list, get, submit)
- ✅ Score calculation and results
- ✅ Health check endpoint
- ✅ Error handling

### Frontend Features
- ✅ Modern, responsive UI design
- ✅ Interactive quiz interface
- ✅ Real-time progress tracking
- ✅ Score display and results
- ✅ Error handling and loading states
- ✅ Mobile-friendly design

## 🔌 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/health` | Health check |
| `GET` | `/api/quizzes` | Get all quizzes |
| `GET` | `/api/quizzes/<id>` | Get specific quiz |
| `POST` | `/api/quizzes/<id>/submit` | Submit quiz answers |

### Example API Usage

```bash
# Get all quizzes
curl http://localhost:5000/api/quizzes

# Get specific quiz
curl http://localhost:5000/api/quizzes/1

# Submit quiz answers
curl -X POST http://localhost:5000/api/quizzes/1/submit \
  -H "Content-Type: application/json" \
  -d '{"answers": {"1": 2, "2": 1, "3": 1}}'
```

## 🎨 UI/UX Features

- **Modern Design**: Clean, card-based layout with gradients
- **Responsive**: Works on desktop, tablet, and mobile
- **Interactive**: Smooth animations and hover effects
- **User-Friendly**: Intuitive navigation and clear feedback
- **Accessibility**: Proper contrast and keyboard navigation

## 🛠️ Development

### Backend Development

The Flask app is structured with:
- **Routes**: API endpoints in `app.py`
- **Data**: Sample quiz data (can be replaced with database)
- **CORS**: Enabled for frontend communication

### Frontend Development

The React app includes:
- **State Management**: React hooks for state
- **API Integration**: Fetch API for backend communication
- **Component Structure**: Modular, reusable components
- **Styling**: Modern CSS with responsive design

## 🔧 Customization

### Adding New Quizzes

Edit the `QUIZZES` array in `backend/app.py`:

```python
QUIZZES = [
    {
        "id": 3,
        "title": "Your New Quiz",
        "description": "Description of your quiz",
        "questions": [
            {
                "id": 1,
                "question": "Your question?",
                "options": ["Option 1", "Option 2", "Option 3", "Option 4"],
                "correct_answer": 0  # Index of correct answer (0-based)
            }
        ]
    }
]
```

### Styling Changes

Modify `src/App.css` to customize the appearance:
- Colors and gradients
- Layout and spacing
- Animations and transitions
- Responsive breakpoints

## 🚀 Deployment

### Backend Deployment

1. **Production WSGI server:**
   ```bash
   pip install gunicorn
   gunicorn -w 4 -b 0.0.0.0:5000 app:app
   ```

2. **Environment variables:**
   ```bash
   export FLASK_ENV=production
   ```

### Frontend Deployment

1. **Build for production:**
   ```bash
   npm run build
   ```

2. **Serve static files:**
   - Use nginx, Apache, or any static file server
   - Deploy to platforms like Vercel, Netlify, or AWS S3

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🆘 Support

If you encounter any issues:

1. Check the console for error messages
2. Ensure both backend and frontend are running
3. Verify the API endpoints are accessible
4. Check browser network tab for API calls

---

**Happy Quizzing! 🎉**
