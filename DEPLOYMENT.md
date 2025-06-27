# 🚀 Career Coach Deployment Guide

This guide will help you deploy your Career Coach application to various platforms. Choose the option that best fits your needs and budget.

## 📋 Prerequisites

1. **GitHub Account**: Your code should be on GitHub
2. **OpenAI API Key**: Get one from [OpenAI Platform](https://platform.openai.com/api-keys)
3. **Basic Git knowledge**: Ability to push code to GitHub

## 🆓 Option 1: Free Deployment (Recommended for Beginners)

### Backend Deployment on Render (Free)

1. **Sign up for Render**:
   - Go to [render.com](https://render.com)
   - Sign up with your GitHub account

2. **Create a new Web Service**:
   - Click "New +" → "Web Service"
   - Connect your GitHub repository
   - Select your repository

3. **Configure the service**:
   - **Name**: `career-coach-backend`
   - **Environment**: `Python 3`
   - **Build Command**: `pip install -r requirements.txt`
   - **Start Command**: `cd backend && ./start.sh`
   - **Root Directory**: Leave empty (deploy from root)

4. **Add Environment Variables**:
   - Click "Environment" tab
   - Add: `OPENAI_API_KEY` = your OpenAI API key
   - Add: `PORT` = `8000`

5. **Deploy**:
   - Click "Create Web Service"
   - Wait for deployment (5-10 minutes)
   - Note your service URL (e.g., `https://your-app.onrender.com`)

### Frontend Deployment on Vercel (Free)

1. **Sign up for Vercel**:
   - Go to [vercel.com](https://vercel.com)
   - Sign up with your GitHub account

2. **Import your project**:
   - Click "New Project"
   - Import your GitHub repository
   - Set root directory to `frontend`

3. **Configure the project**:
   - **Framework Preset**: Create React App
   - **Build Command**: `npm run build`
   - **Output Directory**: `build`
   - **Install Command**: `npm install`

4. **Add Environment Variables**:
   - Go to Project Settings → Environment Variables
   - Add: `REACT_APP_API_URL` = your Render backend URL

5. **Deploy**:
   - Click "Deploy"
   - Wait for deployment (2-3 minutes)
   - Your app will be live at `https://your-app.vercel.app`

## 💰 Option 2: Paid Deployment (More Reliable)

### Backend on Railway

1. **Sign up for Railway**:
   - Go to [railway.app](https://railway.app)
   - Sign up with GitHub

2. **Deploy from GitHub**:
   - Click "New Project" → "Deploy from GitHub repo"
   - Select your repository
   - Railway will auto-detect it's a Python app

3. **Configure**:
   - Add environment variable: `OPENAI_API_KEY`
   - Railway will auto-assign a port

4. **Deploy**:
   - Railway will automatically deploy and give you a URL

### Frontend on Vercel (same as above)

## 🐳 Option 3: Docker Deployment

### Using Docker Compose (Local/Server)

1. **Install Docker and Docker Compose**:
   - Download from [docker.com](https://docker.com)

2. **Set up environment**:
   ```bash
   # Create .env file
   echo "OPENAI_API_KEY=your_api_key_here" > .env
   ```

3. **Deploy**:
   ```bash
   docker-compose up -d
   ```

4. **Access your app**:
   - Frontend: http://localhost:3000
   - Backend: http://localhost:8000

### Using Docker on Cloud Platforms

#### Google Cloud Run

1. **Install Google Cloud CLI**
2. **Build and push**:
   ```bash
   gcloud builds submit --tag gcr.io/PROJECT_ID/career-coach
   gcloud run deploy --image gcr.io/PROJECT_ID/career-coach --platform managed
   ```

#### AWS ECS

1. **Install AWS CLI**
2. **Create ECR repository**
3. **Build and push**:
   ```bash
   aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin YOUR_ACCOUNT.dkr.ecr.us-east-1.amazonaws.com
   docker build -t career-coach .
   docker tag career-coach:latest YOUR_ACCOUNT.dkr.ecr.us-east-1.amazonaws.com/career-coach:latest
   docker push YOUR_ACCOUNT.dkr.ecr.us-east-1.amazonaws.com/career-coach:latest
   ```

## 🔧 Post-Deployment Configuration

### Update CORS Settings

After deploying, update the CORS origins in `backend/app.py`:

```python
app.add_middleware(
    CORSMiddleware,
    allow_origins=[
        "http://localhost:3000",
        "https://your-frontend-domain.vercel.app",  # Add your frontend URL
    ],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
```

### Test Your Deployment

1. **Health Check**: Visit `https://your-backend-url/health`
2. **Frontend**: Visit your frontend URL and try uploading a resume
3. **API Test**: Test the `/questions` endpoint

## 🚨 Troubleshooting

### Common Issues

1. **Backend not starting**:
   - Check Render logs for errors
   - Verify `start.sh` is executable
   - Ensure all dependencies are in `requirements.txt`

2. **CORS errors**:
   - Update CORS origins in backend
   - Redeploy backend after changes

3. **OpenAI API errors**:
   - Verify API key is correct
   - Check API key has sufficient credits

4. **File upload issues**:
   - Ensure PDF files are valid
   - Check file size limits

### Getting Help

- Check platform-specific documentation
- Review application logs
- Test locally first with `docker-compose up`

## 📊 Monitoring and Maintenance

### Free Tier Limitations

- **Render**: 750 hours/month free, then $7/month
- **Vercel**: 100GB bandwidth/month free
- **Railway**: $5/month after free trial

### Scaling Considerations

- Monitor usage and upgrade when needed
- Consider caching for better performance
- Implement rate limiting for API endpoints

## 🎉 Success!

Once deployed, your Career Coach app will be accessible worldwide! Share your frontend URL with users and start helping people with their careers.

Remember to:
- Monitor your OpenAI API usage
- Keep your dependencies updated
- Backup your code regularly
- Test new features before deploying 