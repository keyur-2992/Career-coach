# Career Coach Frontend

This is the frontend for the Career Coach application, built with React. It allows users to upload their resumes, answer career-related questions, and receive personalized coaching reports and job matches.

## Repository
- Main repo: https://github.com/keyur-2992/Career-coach

## Features
- Resume upload and parsing (PDF, with client-side PII redaction)
- Career Q&A sessions (guided questions)
- Personalized coaching reports (AI-powered)
- Job matching based on profile analysis
- Responsive, modern UI

## Tech Stack
- React (SPA)
- Fetch API for backend communication
- Deployed on Vercel

## How It Works

1. **Resume Upload:**
   - User selects a PDF resume to upload.
   - The file is sent to the backend `/upload_resume` endpoint.
   - The parsed resume is displayed, and users can redact sensitive info by selecting text and right-clicking.
2. **Career Questions:**
   - The app fetches questions from the backend `/questions` endpoint.
   - Users answer each question in the UI.
3. **Profile Analysis:**
   - When ready, the app sends the resume data and answers to `/analyze`.
   - The backend returns an AI-generated coaching report.
4. **Job Matching:**
   - The app requests `/find_jobs` with the coaching summary.
   - The backend returns a list of matched jobs.
5. **Error Handling:**
   - All API errors are caught and displayed to the user.

## Getting Started

### Prerequisites
- Node.js (v18 or later recommended)
- npm or yarn

### Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/keyur-2992/Career-coach
   cd Career-coach/frontend
   ```
2. Install dependencies:
   ```sh
   npm install
   ```
3. Start the development server:
   ```sh
   npm start
   ```

## Deployment
The frontend is deployed on Vercel. You can access the live app at [career-coach-theta.vercel.app](https://career-coach-theta.vercel.app/).

## License
This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.
