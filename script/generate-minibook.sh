#!/bin/bash

# Script to generate PDF and ePUB versions of the minibook
# Usage: ./script/generate-minibook.sh

set -e

echo "🚀 Generating minibook formats..."

# Create output directory
mkdir -p downloads

# Build the Jekyll site first
echo "🏗️  Building Jekyll site..."
bundle exec jekyll build --quiet

# Extract and clean the minibook content
echo "🧹 Preparing content for conversion..."

# Create a simplified markdown version for better conversion
cat > /tmp/minibook_content.md << 'EOF'
---
title: "The Beeminder Experiment"
author: "Brennan Brown"
lang: "en"
---

# 📊 The Beeminder Experiment

## How I Transformed My Life Through Data & Accountability

*24 Months • 70 Weekly Updates • 26 Simultaneous Habits*

### Stats Overview

- **160,000+** Words Written
- **2.5 Million** Steps Walked  
- **700+** GitHub Commits
- **30+** Books Read

## 🚀 The Journey

> "I failed hard with Beeminder, and subsequently life. I have been working as a cook at a children's hospital for the past four years, and due to a contract ending, I was laid off last month. By the sheer grace of the universe, I landed a full-ride scholarship to a full-stack web development program."
> 
> — Week 0: The Baseline, February 2020

In February 2020, I embarked on an ambitious experiment: could I use Beeminder to transform my scattered intentions into consistent action? After failing spectacularly in 2017, I came back with a new approach—radical transparency through weekly public updates.

What started as 5 simple goals grew into a comprehensive life-tracking system with 26 simultaneous habits. This is the story of that transformation, the metrics that prove it worked, and the framework you can use to replicate it.

## 📈 The Numbers Don't Lie

Over 24 months of consistent tracking, I achieved metrics that seemed impossible at the start:

### ✍️ Writing Output
**160,000+** words written at 450 words/day

### 💻 Development  
**700+** GitHub commits created

### 🏃 Fitness
**2.5M** steps walked in one year

### 📚 Learning
**30+** audiobooks consumed

### 🌍 Languages
**12,000** XP gained on Duolingo

### 💪 Consistency
**70** consecutive weekly updates

> 🎯 **The Ultimate Achievement:** Going from someone who "failed hard with Beeminder and subsequently life" to maintaining 26 simultaneous positive habits while navigating a global pandemic, job loss, scholarship, moving, surgery recovery, and career transition.

## 💡 What I Learned

> "In spite of everything else, Beeminder has made this year the most productive year I've ever had. Investing my time and really dedicating myself to this has paid off in tenfold."
> 
> — Week 44, December 30, 2020

### The Philosophy That Worked

Success came from a set of counter-intuitive principles I developed through trial and error:

#### ✨ Core Principles That Worked

1. **Start Small, Scale Gradually:** I began with just 5 goals. The atomic habits approach prevented early burnout. "I *know* I have a habit of getting the initial rush of motivation to jump into things only for them to fizzle out."

2. **Public Accountability:** 70 consecutive weekly blog posts created social pressure to maintain consistency. This was the secret sauce—it made being accountable fun.

3. **Anti-Goal Framework:** All systems designed for infinite continuation, no temporary goals. "All of my beeminders will be tracking things I want to theoretically do for the rest of my life."

4. **Redundancy of Efforts:** Single source of truth for planning—no scattered notebooks or apps. Everything lives in one place, backed up identically.

5. **Meta-Accountability:** Beeminding Beeminder itself through weekly check-ins and journaling. You have to track the tracking.

6. **Automated Where Possible:** RescueTime, Fitbit, GitHub, IFTTT—let technology do the heavy lifting so you can focus on the doing.

### Measurement Alone Improves Behavior

One of the most surprising discoveries was the Hawthorne Effect in action:

> "I don't really use Beeminder for the punishment consequence anyways, I just like the pretty graphs that are slowly built—like plants in a garden."
> 
> — Week 28, August 11, 2020

Simply knowing I was tracking something made me do it more. The graphs became visual representations of my progress—each data point a small victory. This visualization was more motivating than any punishment could be.

### Streaks Don't Matter (Your Graph Does)

> "Even if the website says I'm back at 0, I still forever have my Beeminder graph recording my upward progress. I think that's why the whole 'don't break the chain' mentality can sometimes be more unhelpful than helpful, and why Beeminder is such a great alternative to it!"
> 
> — Week 58, May 10, 2021

Breaking a Duolingo streak used to devastate me. With Beeminder, losing a streak meant nothing—the graph showed my overall trajectory was still upward. This shift in perspective was liberating.

### What Actually Changed

The most profound change wasn't any single metric—it was behavioral:

> "I haven't really had to use Beeminder for my schoolwork. I've just been doing my assignments and research, at a reasonable daily pace instead of trying to do everything last-minute, which used to be my default."
> 
> — Week 66, January 1, 2022

After internalizing these habits, productivity became automatic. The systems transformed my baseline behavior. I went from chronic procrastinator to someone who just... does the work. Daily. Without drama.

> "The daily habits that I do which I've trained myself with using Beeminder (and that are still ongoing) have changed how I interface with my work in general."
> 
> — Week 66, January 1, 2022

## 🌅 Good Schedule for a Happy Life

This framework emerged from my experiment—10 principles that form the foundation of a well-lived day:

1. **Start today off right! Do good and be meaningful—Try your best.**
   Wake up early and make your bed as soon as you get up. Clean your room. Listen to upbeat music and visualize what you'll be doing for the day. Try to prepare as much the night prior, as well as make sure you have a healthy breakfast.

2. **Meditate on Intentionality. Plan the day effectively and minimally.**
   Prepare a to-do list of the most important tasks that need to get done today. View all long-term goals and make sure you're making progress towards them. Section out different parts of the day for different activities. Don't waste time — it's limited.

3. **Generate ideas, research important topics, draft and edit good writing.**
   Document how you feel and what your plans are for the day, as well as the progress being made. Research, draft, and publish articles and blog posts. Archive all work. Keep track of poetry, prose, and other creative work being written as well.

4. **Focus on deep work, effective tasks, and self-education.**
   Prioritize time to your most important tasks, namely learning and working. Ensure progress is being made in classes both online and in real life. Large amounts of time should be dedicated to tasks that make progress towards goals.

5. **Be grateful for what you have, stop and breathe—Take stock of it all.**
   Focus on the many good things in life, as well as contemplate where you're able to do better and improve. Relax, slow down, breath in and out, and think of the bigger picture. Take time to recite morning and religious prayers, memorize them.

6. **Eat Healthy and Eat Less—Practice veganism, sobriety, and OMAD.**
   Be mindful of what you're eating, and only eat at the dinner table. Look over cookbooks for inspiration and add items to your recipe box. Don't waste money or calories on junk food or eating out. Take time for spiritual fasting as well.

7. **Keep yourself active, stand up as much as you can, work out often.**
   Maintain physical fitness on a daily basis. Take some time out of your day to go for a jog, practice at-home routines. There are plenty of opportunities to get active.

8. **Practice frugality—You already have everything that you need.**
   Don't waste your money or your time, you have less of both than you think. Don't shop unless it's essential, and don't do things that aren't essential to do, unless you enjoy doing them. Figure out ways to maximize both each day.

9. **Archive everything meaningful and important into the Commonplace.**
   Don't let the important and interesting slip away easily. Save everything you find throughout the day in one place, and categorize these things consistently.

10. **Just Relax! Have fun and play. Don't just work all day.**
    Don't forget to spend time on creative projects, as well as wind down at the end of the day. Spend as much time on analogue activities as you can. Wander aimlessly.

## 🎯 The Framework: How to Replicate This

### Phase 1: Foundation (Weeks 1-4)

> **Start with 3-5 goals maximum.** Choose things you're already somewhat doing but want to do more consistently. Use automated tracking where possible (RescueTime, Fitbit, GitHub, etc.).

> **Create your accountability system.** For me, this was weekly blog posts. For you, it might be sharing on social media, a Discord community, or weekly emails to a friend.

### Phase 2: Building Momentum (Weeks 5-12)

> **Add one new goal every 2-3 weeks.** Only add when the previous goals feel automatic. Watch for the "Hawthorne Effect"—measurement alone improves behavior.

> **Implement safety valves.** Use breaks, weekends off, and "meta" goals to prevent burnout.

### Phase 3: Optimization (Weeks 13-26)

> **Fine-tune your rates.** Use auto-ratchet to prevent coasting. Archive goals that aren't working. Double down on what feels good.

> **Build supporting systems.** Add daily check-ins, morning pages, gratitude practices—meta habits that support all others.

### Phase 4: Equilibrium (Week 27+)

> **Maintain without overthinking.** At this point, the habits should feel natural. The systems run themselves. You're no longer "trying"—you're just doing.

## 🚀 Ready to Start Your Own Experiment?

Join the Beeminder community and transform your intentions into action.

[🐝 Try Beeminder](https://beeminder.com) • [📖 Read the Full Journal](/)

---

## 💜 Found This Helpful?

This guide represents 24 months of daily effort, 70 weekly blog posts, and countless hours of self-experimentation. If you found value in these insights, consider supporting my work!

[☕ Buy Me a Coffee](https://ko-fi.com/brennan) • [❤️ GitHub Sponsors](https://github.com/sponsors/brennanbrown)

Your support helps me continue creating free resources and tools for the productivity community.

---

*Generated from the original Beeminder Journal at [beejournal.netlify.app](https://beejournal.netlify.app)*
EOF

# Generate ePUB using Pandoc
echo "� Generating ePUB..."
pandoc /tmp/minibook_content.md \
    --to=epub \
    -o downloads/The-Beeminder-Experiment.epub \
    --metadata title="The Beeminder Experiment" \
    --metadata author="Brennan Brown" \
    --metadata lang="en" \
    --css=assets/main.css \
    --epub-cover-image=assets/logo.png 2>/dev/null || {
    echo "⚠️  ePUB generation failed, trying without cover..."
    pandoc /tmp/minibook_content.md \
        --to=epub \
        -o downloads/The-Beeminder-Experiment.epub \
        --metadata title="The Beeminder Experiment" \
        --metadata author="Brennan Brown" \
        --metadata lang="en"
}

# Generate PDF using Pandoc (HTML to PDF)
echo "📕 Generating PDF..."
pandoc /tmp/minibook_content.md \
    --to=html \
    -o /tmp/minibook_temp.html \
    --metadata title="The Beeminder Experiment" \
    --metadata author="Brennan Brown" \
    --metadata lang="en"

# Convert HTML to PDF using wkhtmltopdf alternative (if available) or create simple HTML
if command -v wkhtmltopdf &> /dev/null; then
    wkhtmltopdf --page-size letter --margin-top 1in --margin-right 1in --margin-bottom 1in --margin-left 1in /tmp/minibook_temp.html downloads/The-Beeminder-Experiment.pdf
else
    # Create a styled HTML file that can be saved as PDF from browser
    cat > downloads/The-Beeminder-Experiment.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>The Beeminder Experiment</title>
    <style>
        @page { margin: 1in; }
        body { 
            font-family: Georgia, serif; 
            line-height: 1.6; 
            max-width: 800px; 
            margin: 0 auto;
            color: #1a202c;
            background: white;
        }
        h1, h2, h3 { 
            color: #d97706; 
            font-family: 'Segoe UI', Arial, sans-serif;
            page-break-after: avoid;
        }
        h1 { font-size: 2rem; text-align: center; }
        h2 { font-size: 1.5rem; }
        h3 { font-size: 1.2rem; }
        blockquote { 
            background: #f8fafc; 
            border-left: 4px solid #d97706; 
            padding: 1em; 
            margin: 1em 0; 
            font-style: italic;
        }
        code { 
            background: #f8fafc; 
            padding: 2px 4px; 
            border-radius: 3px; 
            font-family: monospace;
        }
        .stats { 
            background: #fff8e1; 
            padding: 1em; 
            border-radius: 8px; 
            margin: 1em 0;
        }
        @media print {
            body { margin: 0; }
            .no-print { display: none; }
        }
    </style>
</head>
<body>
EOF

    # Append the content
    cat /tmp/minibook_temp.html >> downloads/The-Beeminder-Experiment.html
    
    # Close HTML
    cat >> downloads/The-Beeminder-Experiment.html << 'EOF'
</body>
</html>
EOF
    
    echo "✅ HTML version created: downloads/The-Beeminder-Experiment.html"
    echo "💡 Save as PDF from your browser (Cmd+P → Save as PDF)"
fi

# Check if files were created
if [ -f "downloads/The-Beeminder-Experiment.pdf" ]; then
    echo "✅ PDF generated: downloads/The-Beeminder-Experiment.pdf"
    ls -lh downloads/The-Beeminder-Experiment.pdf
elif [ -f "downloads/The-Beeminder-Experiment.html" ]; then
    echo "✅ HTML version created: downloads/The-Beeminder-Experiment.html"
    echo "💡 Save as PDF from your browser (Cmd+P → Save as PDF)"
    
    # Try to create PDF using macOS cupsfilter
    if command -v cupsfilter &> /dev/null; then
        echo "🔄 Attempting to create PDF using macOS tools..."
        cupsfilter downloads/The-Beeminder-Experiment.html > downloads/The-Beeminder-Experiment.pdf 2>/dev/null && \
            echo "✅ PDF generated: downloads/The-Beeminder-Experiment.pdf" || \
            echo "⚠️  PDF generation failed, but HTML version is available"
    fi
else
    echo "⚠️  Both PDF and HTML generation failed"
fi

if [ -f "downloads/The-Beeminder-Experiment.epub" ]; then
    echo "✅ ePUB generated: downloads/The-Beeminder-Experiment.epub"
    ls -lh downloads/The-Beeminder-Experiment.epub
else
    echo "⚠️  ePUB generation failed"
fi

echo "🎉 Minibook generation complete!"
echo "📁 Files available in: downloads/"
