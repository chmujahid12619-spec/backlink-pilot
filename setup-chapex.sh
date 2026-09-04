#!/bin/bash
# ============================================
# ONE COMMAND SETUP FOR CHAPEXBRANDINGHUB
# Run: bash setup-chapex.sh
# ============================================

echo "🚀 Setting up Backlink Pilot for Chapexbrandinghub..."

# Step 1: Clone repo
echo "📥 Cloning repository..."
git clone https://github.com/s87343472/backlink-pilot.git
cd backlink-pilot

# Step 2: Install dependencies
echo "📦 Installing dependencies..."
npm install
npm install -g bb-browser

# Step 3: Create config.yaml
echo "⚙️ Creating config..."
cat > config.yaml << 'EOF'
product:
  name: "Chapexbrandinghub"
  url: "https://chapexbrandinghub.netlify.app"
  description: "Chapexbrandinghub is an AI-driven multilingual visual branding and digital commerce powerhouse. We deliver instant, automated visual branding suites including 3D logos, luxury business cards, social media ad blueprints, lower-third news graphics, and broadcasting studio templates. Our platform enables global creators, e-commerce stores, and media agencies to go from idea to professional brand assets in under 60 seconds with culturally-aware multilingual support. UK-registered, bootstrapped venture with +40% MoM revenue growth."
  tags:
    - "AI Branding"
    - "Logo Design"
    - "3D Logo"
    - "Social Media Design"
    - "Digital Commerce"
    - "Multilingual Design"
    - "Brand Identity"
    - "Startup Tools"
    - "AI Automation"
    - "Visual Assets"
  logo: "https://chapexbrandinghub.netlify.app/logo.png"
  email: "chmujahid12619@gmail.com"

settings:
  engine: "bb"
  delay: 3000
  headless: true
  maxRetries: 2
  screenshot: true
  utm:
    enabled: true
    source: "backlink-pilot"
    medium: "directory"
EOF

# Step 4: Test submission
echo "🎯 Running first test submission to futuretools..."
node src/cli.js submit futuretools --engine bb

# Step 5: Start batch (10 sites)
echo "🚀 Starting batch submission (10 sites)..."
node src/batch-submit.js --limit 10 --engine bb

# Step 6: Ping search engines
echo "🔍 Pinging search engines..."
node src/cli.js indexnow https://chapexbrandinghub.netlify.app

echo "✅ DONE! Chapexbrandinghub submitted to directories."
echo "📅 Run this daily: node src/batch-submit.js --limit 10 --engine bb"    یہ ہے نا پورا کوڈ
