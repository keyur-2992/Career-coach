# ⚡ Quick Start Deployment Guide

Get your Career Coach app live in 15 minutes!

## 🚀 Step-by-Step Deployment

### 1. Get Your OpenAI API Key
- Go to [OpenAI Platform](https://platform.openai.com/api-keys)
- Create a new API key
- Copy it (you'll need it later)

### 2. Push Code to GitHub
```bash
# If you haven't already, create a GitHub repository
# Then run these commands:

git add .
git commit -m "Prepare for deployment"
git push origin main
```

### 3. Deploy Backend on Render (5 minutes)

1. **Go to [render.com](https://render.com)**
2. **Sign up with GitHub**
3. **Click "New +" → "Web Service"**
4. **Connect your GitHub repository**
5. **Configure:**
   - **Name**: `career-coach-backend`
   - **Environment**: `Python 3`
   - **Build Command**: `pip install -r requirements.txt`
   - **Start Command**: `cd backend && ./start.sh`
6. **Add Environment Variable:**
   - **Key**: `OPENAI_API_KEY`
   - **Value**: Your OpenAI API key
7. **Click "Create Web Service"**
8. **Wait 5-10 minutes for deployment**
9. **Copy your service URL** (e.g., `https://your-app.onrender.com`)

### 4. Deploy Frontend on Vercel (5 minutes)

1. **Go to [vercel.com](https://vercel.com)**
2. **Sign up with GitHub**
3. **Click "New Project"**
4. **Import your GitHub repository**
5. **Configure:**
   - **Framework Preset**: Create React App
   - **Root Directory**: `frontend`
   - **Build Command**: `npm run build`
   - **Output Directory**: `build`
6. **Add Environment Variable:**
   - **Key**: `REACT_APP_API_URL`
   - **Value**: Your Render backend URL (from step 3)
7. **Click "Deploy"**
8. **Wait 2-3 minutes for deployment**
9. **Your app is live!** 🎉

### 5. Update CORS Settings (2 minutes)

1. **Go back to your Render dashboard**
2. **Find your backend service**
3. **Go to "Environment" tab**
4. **Add new environment variable:**
   - **Key**: `FRONTEND_URL`
   - **Value**: Your Vercel frontend URL
5. **Redeploy the service**

## 🎯 Your App is Now Live!

- **Frontend**: `https://your-app.vercel.app`
- **Backend**: `https://your-app.onrender.com`

## 🧪 Test Your Deployment

1. **Visit your frontend URL**
2. **Upload a PDF resume**
3. **Answer the career questions**
4. **Get your AI coaching report!**

## 🆘 Need Help?

- **Backend not working?** Check Render logs
- **Frontend not connecting?** Verify the API URL
- **CORS errors?** Update the CORS settings
- **OpenAI errors?** Check your API key

## 💰 Cost

- **Render**: Free for 750 hours/month
- **Vercel**: Free for 100GB bandwidth/month
- **OpenAI**: Pay per use (~$0.01-0.10 per analysis)

## 🔄 Updates

To update your app:
1. Make changes to your code
2. Push to GitHub
3. Both Render and Vercel will auto-deploy!

---

**That's it! Your Career Coach app is now live and helping people worldwide! 🌍** 