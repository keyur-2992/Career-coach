#!/bin/bash

echo "🚀 Career Coach Deployment Script"
echo "=================================="

# Check if .env file exists
if [ ! -f .env ]; then
    echo "⚠️  .env file not found. Creating one..."
    echo "Please enter your OpenAI API key:"
    read -s OPENAI_API_KEY
    echo "OPENAI_API_KEY=$OPENAI_API_KEY" > .env
    echo "✅ .env file created"
else
    echo "✅ .env file found"
fi

# Check if git is initialized
if [ ! -d .git ]; then
    echo "⚠️  Git not initialized. Initializing..."
    git init
    git add .
    git commit -m "Initial commit"
    echo "✅ Git initialized"
else
    echo "✅ Git repository found"
fi

# Check if remote origin exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "⚠️  No remote origin found."
    echo "Please create a GitHub repository and add it as origin:"
    echo "git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git"
    echo "git push -u origin main"
else
    echo "✅ Remote origin found"
fi

echo ""
echo "📋 Next Steps:"
echo "=============="
echo ""
echo "1. 🐙 Push your code to GitHub:"
echo "   git add ."
echo "   git commit -m 'Prepare for deployment'"
echo "   git push"
echo ""
echo "2. 🌐 Deploy Backend on Render:"
echo "   - Go to https://render.com"
echo "   - Sign up with GitHub"
echo "   - Create new Web Service"
echo "   - Connect your repository"
echo "   - Set Build Command: pip install -r requirements.txt"
echo "   - Set Start Command: cd backend && ./start.sh"
echo "   - Add environment variable: OPENAI_API_KEY"
echo ""
echo "3. ⚡ Deploy Frontend on Vercel:"
echo "   - Go to https://vercel.com"
echo "   - Sign up with GitHub"
echo "   - Import your repository"
echo "   - Set root directory to 'frontend'"
echo "   - Add environment variable: REACT_APP_API_URL (your Render backend URL)"
echo ""
echo "4. 🔧 Update CORS settings in backend/app.py with your frontend URL"
echo ""
echo "📖 For detailed instructions, see DEPLOYMENT.md"
echo ""
echo "🎉 Good luck with your deployment!" 