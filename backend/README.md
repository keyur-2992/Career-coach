# Career Coach Backend

This is the backend for the Career Coach application, built with FastAPI. It handles resume parsing, career Q&A sessions, profile analysis, and job matching.

## Repository
- Main repo: https://github.com/keyur-2992/Career-coach

## Features
- Resume parsing and analysis (PDF to structured data)
- Career Q&A sessions (questionnaire API)
- Personalized coaching reports (AI-powered analysis)
- Job matching based on profile analysis

## Tech Stack
- FastAPI (Python web framework)
- Uvicorn (ASGI server)
- OpenAI API (LLM-powered analysis)
- pdfplumber, pdfminer.six (PDF parsing)
- Deployed on Render

## How It Works

1. **Resume Upload:**
   - User uploads a PDF resume via `/upload_resume`.
   - The backend extracts text using `pdfplumber` and parses it into structured data.
2. **Career Questions:**
   - The frontend fetches questions from `/questions` (served from a shared JSON file).
3. **Profile Analysis:**
   - The frontend sends resume data and answers to `/analyze`.
   - The backend merges the data and sends a prompt to OpenAI for analysis.
   - The AI response is parsed and returned as a coaching report.
4. **Job Matching:**
   - The frontend requests `/find_jobs` with the coaching summary.
   - The backend matches the profile to job opportunities using rule-based and AI-assisted logic.
5. **Health Check:**
   - `/health` endpoint for uptime monitoring.

### Request Flow
```
Frontend (React) → [POST] /upload_resume → Resume parsed
Frontend (React) → [GET] /questions → Get questions
Frontend (React) → [POST] /analyze → Get coaching report
Frontend (React) → [POST] /find_jobs → Get job matches
```

### API Endpoints
- `POST /upload_resume`: Upload and parse a PDF resume
- `POST /analyze`: Analyze resume and answers
- `POST /find_jobs`: Find matching job opportunities
- `GET /questions`: Get career reflection questions
- `GET /health`: Health check endpoint

## Getting Started

### Prerequisites
- Python 3.8+
- pip

### Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/keyur-2992/Career-coach
   cd Career-coach/backend
   ```
2. Install dependencies:
   ```sh
   pip install -r ../requirements.txt
   ```
3. Start the server:
   ```sh
   uvicorn app:app --reload --port 8000
   ```

## License
This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.

