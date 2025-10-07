---
layout: page
title: Guide
permalink: /minibook/
---

<style>
.minibook-container {
    max-width: 800px;
    margin: 0 auto;
    font-family: 'Lora', Georgia, serif;
}

.minibook-hero {
    text-align: center;
    padding: 3rem 1.5rem;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    border-radius: 16px;
    margin-bottom: 3rem;
    box-shadow: 0 10px 40px rgba(102, 126, 234, 0.3);
}

.minibook-hero h1 {
    color: white;
    font-size: 2.5rem;
    margin-bottom: 1rem;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.minibook-hero .subtitle {
    font-size: 1.3rem;
    color: white;
    opacity: 1;
    font-weight: 300;
    margin-bottom: 1.5rem;
    text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.minibook-hero .stats {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
    gap: 1.5rem;
    margin-top: 2rem;
}

.stat-item {
    background: rgba(255, 255, 255, 0.25);
    padding: 1rem;
    border-radius: 12px;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.3);
}

.stat-number {
    font-size: 2rem;
    font-weight: 700;
    display: block;
    margin-bottom: 0.25rem;
    color: white !important;
    text-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

.stat-label {
    font-size: 0.9rem;
    color: white;
    opacity: 1;
    font-weight: 500;
}

.download-section {
    text-align: center;
    padding: 2rem;
    background: white;
    border-radius: 12px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    margin-bottom: 3rem;
}

.download-buttons {
    display: flex;
    gap: 1rem;
    justify-content: center;
    flex-wrap: wrap;
    margin-top: 1.5rem;
}

.download-btn {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    padding: 1rem 2rem;
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white !important;
    text-decoration: none;
    border-radius: 50px;
    font-weight: 600;
    font-size: 1.1rem;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.download-btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 8px 25px rgba(102, 126, 234, 0.5);
}

.download-btn.secondary {
    background: linear-gradient(135deg, #43e97b, #38f9d7);
}

.content-section {
    background: white;
    padding: 2.5rem;
    border-radius: 12px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    margin-bottom: 2rem;
}

.content-section h2 {
    color: #667eea;
    font-size: 2rem;
    margin-bottom: 1.5rem;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.content-section h3 {
    color: #2d3748;
    font-size: 1.5rem;
    margin-top: 2rem;
    margin-bottom: 1rem;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.highlight-box {
    background: linear-gradient(135deg, rgba(102, 126, 234, 0.1), rgba(118, 75, 162, 0.1));
    padding: 1.5rem;
    border-radius: 12px;
    border-left: 4px solid #667eea;
    margin: 2rem 0;
}

.metric-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 1.5rem;
    margin: 2rem 0;
}

.metric-card {
    background: linear-gradient(135deg, #f7fafc, #edf2f7);
    padding: 1.5rem;
    border-radius: 12px;
    border-top: 3px solid #667eea;
}

.metric-card h4 {
    color: #667eea;
    margin-bottom: 0.5rem;
    font-size: 1.1rem;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.metric-value {
    font-size: 2rem;
    font-weight: 700;
    color: #2d3748;
    margin-bottom: 0.5rem;
}

.schedule-list {
    list-style: none;
    padding: 0;
    counter-reset: schedule-counter;
}

.schedule-list li {
    counter-increment: schedule-counter;
    position: relative;
    padding-left: 4rem;
    margin-bottom: 2rem;
    line-height: 1.7;
}

.schedule-list li::before {
    content: counter(schedule-counter);
    position: absolute;
    left: 0;
    top: 0;
    width: 3rem;
    height: 3rem;
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: 700;
    font-size: 1.3rem;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.schedule-list li strong {
    display: block;
    color: #667eea;
    font-size: 1.2rem;
    margin-bottom: 0.5rem;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.quote-box {
    background: white;
    padding: 2rem;
    border-radius: 12px;
    border-left: 4px solid #667eea;
    margin: 2rem 0;
    font-style: italic;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
}

.quote-box p {
    font-size: 1.1rem;
    line-height: 1.8;
    margin-bottom: 1rem;
}

.quote-author {
    text-align: right;
    color: #718096;
    font-weight: 600;
    font-size: 0.95rem;
}

.key-lessons {
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white;
    padding: 2.5rem;
    border-radius: 12px;
    margin: 2rem 0;
}

.key-lessons h3 {
    color: white;
    margin-bottom: 1.5rem;
}

.key-lessons ul {
    list-style: none;
    padding: 0;
}

.key-lessons li {
    padding-left: 2rem;
    margin-bottom: 1rem;
    position: relative;
    line-height: 1.7;
}

.key-lessons li::before {
    content: '✓';
    position: absolute;
    left: 0;
    font-weight: 700;
    font-size: 1.3rem;
}

/* Ensure all strong/bold text in purple sections is white */
.minibook-hero strong,
.key-lessons strong {
    color: white !important;
}
</style>

<div class="minibook-container">

<div class="minibook-hero">
    <h1>📊 The Beeminder Experiment</h1>
    <p class="subtitle">How I Transformed My Life Through Data & Accountability</p>
    <p style="font-size: 1rem; color: white; font-weight: 500;">24 Months • 70 Weekly Updates • 26 Simultaneous Habits</p>
    
    <div class="stats">
        <div class="stat-item">
            <span class="stat-number">160k+</span>
            <span class="stat-label">Words Written</span>
        </div>
        <div class="stat-item">
            <span class="stat-number">2.5M</span>
            <span class="stat-label">Steps Walked</span>
        </div>
        <div class="stat-item">
            <span class="stat-number">700+</span>
            <span class="stat-label">GitHub Commits</span>
        </div>
        <div class="stat-item">
            <span class="stat-number">30+</span>
            <span class="stat-label">Books Read</span>
        </div>
    </div>
</div>

<div class="download-section">
    <h2 style="color: #667eea; margin-bottom: 0.5rem;">📚 Download the Complete Guide</h2>
    <p style="color: #718096; margin-bottom: 0;">Available in multiple formats for your convenience</p>
    
    <div class="download-buttons">
        <a href="#" class="download-btn" onclick="alert('PDF generation coming soon! For now, use your browser\'s Print to PDF feature.'); return false;">
            📄 Download PDF
        </a>
        <a href="#" class="download-btn secondary" onclick="alert('ePub generation coming soon!'); return false;">
            📱 Download ePub
        </a>
    </div>
    
    <p style="margin-top: 1rem; font-size: 0.9rem; color: #718096;">
        <em>Tip: You can also use your browser's "Print to PDF" feature to save this page</em>
    </p>
</div>

<!-- Introduction -->
<div class="content-section">
    <h2>🚀 The Journey</h2>
    
    <div class="quote-box">
        <p>"I failed hard with Beeminder, and subsequently life. I have been working as a cook at a children's hospital for the past four years, and due to a contract ending, I was laid off last month. By the sheer grace of the universe, I landed a full-ride scholarship to a full-stack web development program."</p>
        <p class="quote-author">— Week 0: The Baseline, February 2020</p>
    </div>
    
    <p>In February 2020, I embarked on an ambitious experiment: could I use <a href="https://beeminder.com">Beeminder</a> to transform my scattered intentions into consistent action? After failing spectacularly in 2017, I came back with a new approach—radical transparency through weekly public updates.</p>
    
    <p>What started as 5 simple goals grew into a comprehensive life-tracking system with 26 simultaneous habits. This is the story of that transformation, the metrics that prove it worked, and the framework you can use to replicate it.</p>
    
    <h3>Why I Came Back to Beeminder</h3>
    
    <p>My initial failure taught me something crucial: <strong>you can't just set goals and hope for the best.</strong> You need systems, accountability, and most importantly, meta-accountability—tracking the tracking itself.</p>
    
    <div class="quote-box">
        <p>"One reason I think I failed at Beeminder was simply not using Beeminder for Beeminder, or in other words, creating a system that would track daily check-ins so I can be mindful of where I am with all my other systems. Or having a weekly write-up in the way of this Beejournal for meta-accountability. I really cannot believe I did not think of this sooner."</p>
        <p class="quote-author">— Week 0: The Baseline, February 2020</p>
    </div>
    
    <p>This revelation became the foundation of my success: <strong>70 consecutive weekly blog posts</strong> documenting every triumph, failure, system tweak, and insight. Public accountability transformed everything.</p>
</div>

<!-- The Impressive Numbers -->
<div class="content-section">
    <h2>📈 The Numbers Don't Lie</h2>
    <p>Over 24 months of consistent tracking, I achieved metrics that seemed impossible at the start:</p>
    
    <div class="metric-grid">
        <div class="metric-card">
            <h4>✍️ Writing Output</h4>
            <div class="metric-value">160,000+</div>
            <p>words written at 450 words/day</p>
        </div>
        
        <div class="metric-card">
            <h4>💻 Development</h4>
            <div class="metric-value">700+</div>
            <p>GitHub commits created</p>
        </div>
        
        <div class="metric-card">
            <h4>🏃 Fitness</h4>
            <div class="metric-value">2.5M</div>
            <p>steps walked in one year</p>
        </div>
        
        <div class="metric-card">
            <h4>📚 Learning</h4>
            <div class="metric-value">30+</div>
            <p>audiobooks consumed</p>
        </div>
        
        <div class="metric-card">
            <h4>🌍 Languages</h4>
            <div class="metric-value">12,000</div>
            <p>XP gained on Duolingo</p>
        </div>
        
        <div class="metric-card">
            <h4>💪 Consistency</h4>
            <div class="metric-value">70</div>
            <p>consecutive weekly updates</p>
        </div>
    </div>
    
    <div class="highlight-box">
        <p><strong>🎯 The Ultimate Achievement:</strong> Going from someone who "failed hard with Beeminder and subsequently life" to maintaining 26 simultaneous positive habits while navigating a global pandemic, job loss, scholarship, moving, surgery recovery, and career transition.</p>
    </div>
</div>

<!-- My Wisdom -->
<div class="content-section">
    <h2>💡 What I Learned</h2>
    
    <div class="quote-box">
        <p>"In spite of everything else, Beeminder has made this year the most productive year I've ever had. Investing my time and really dedicating myself to this has paid off in tenfold."</p>
        <p class="quote-author">— Week 44, December 30, 2020</p>
    </div>
    
    <h3>The Philosophy That Worked</h3>
    
    <p>Success came from a set of counter-intuitive principles I developed through trial and error:</p>
    
    <div class="key-lessons">
        <h3>✨ Core Principles That Worked</h3>
        <ul>
            <li><strong>Start Small, Scale Gradually:</strong> I began with just 5 goals. The atomic habits approach prevented early burnout. "I *know* I have a habit of getting the initial rush of motivation to jump into things only for them to fizzle out."</li>
            <li><strong>Public Accountability:</strong> 70 consecutive weekly blog posts created social pressure to maintain consistency. This was the secret sauce—it made being accountable fun.</li>
            <li><strong>Anti-Goal Framework:</strong> All systems designed for infinite continuation, no temporary goals. "All of my beeminders will be tracking things I want to theoretically do for the rest of my life."</li>
            <li><strong>Redundancy of Efforts:</strong> Single source of truth for planning—no scattered notebooks or apps. Everything lives in one place, backed up identically.</li>
            <li><strong>Meta-Accountability:</strong> Beeminding Beeminder itself through weekly check-ins and journaling. You have to track the tracking.</li>
            <li><strong>Automated Where Possible:</strong> RescueTime, Fitbit, GitHub, IFTTT—let technology do the heavy lifting so you can focus on the doing.</li>
        </ul>
    </div>
    
    <h3>Measurement Alone Improves Behavior</h3>
    
    <p>One of the most surprising discoveries was the <strong>Hawthorne Effect</strong> in action:</p>
    
    <div class="quote-box">
        <p>"I don't really use Beeminder for the punishment consequence anyways, I just like the pretty graphs that are slowly built—like plants in a garden."</p>
        <p class="quote-author">— Week 28, August 11, 2020</p>
    </div>
    
    <p>Simply knowing I was tracking something made me do it more. The graphs became visual representations of my progress—each data point a small victory. This visualization was more motivating than any punishment could be.</p>
    
    <h3>Streaks Don't Matter (Your Graph Does)</h3>
    
    <div class="quote-box">
        <p>"Even if the website says I'm back at 0, I still forever have my Beeminder graph recording my upward progress. I think that's why the whole 'don't break the chain' mentality can sometimes be more unhelpful than helpful, and why Beeminder is such a great alternative to it!"</p>
        <p class="quote-author">— Week 58, May 10, 2021</p>
    </div>
    
    <p>Breaking a Duolingo streak used to devastate me. With Beeminder, losing a streak meant nothing—the graph showed my overall trajectory was still upward. This shift in perspective was liberating.</p>
    
    <h3>What Actually Changed</h3>
    
    <p>The most profound change wasn't any single metric—it was behavioral:</p>
    
    <div class="quote-box">
        <p>"I haven't really had to use Beeminder for my schoolwork. I've just been doing my assignments and research, at a reasonable daily pace instead of trying to do everything last-minute, which used to be my default."</p>
        <p class="quote-author">— Week 66, January 1, 2022</p>
    </div>
    
    <p>After internalizing these habits, productivity became automatic. The systems transformed my baseline behavior. I went from chronic procrastinator to someone who just... does the work. Daily. Without drama.</p>
    
    <div class="quote-box">
        <p>"The daily habits that I do which I've trained myself with using Beeminder (and that are still ongoing) have changed how I interface with my work in general."</p>
        <p class="quote-author">— Week 66, January 1, 2022</p>
    </div>
</div>

<!-- The Schedule -->
<div class="content-section">
    <h2>🌅 Good Schedule for a Happy Life</h2>
    <p>This framework emerged from my experiment—10 principles that form the foundation of a well-lived day:</p>
    
    <ol class="schedule-list">
        <li>
            <strong>Start today off right! Do good and be meaningful—Try your best.</strong>
            Wake up early and make your bed as soon as you get up. Clean your room. Listen to upbeat music and visualize what you'll be doing for the day. Try to prepare as much the night prior, as well as make sure you have a healthy breakfast.
        </li>
        
        <li>
            <strong>Meditate on Intentionality. Plan the day effectively and minimally.</strong>
            Prepare a to-do list of the most important tasks that need to get done today. View all long-term goals and make sure you're making progress towards them. Section out different parts of the day for different activities. Don't waste time — it's limited.
        </li>
        
        <li>
            <strong>Generate ideas, research important topics, draft and edit good writing.</strong>
            Document how you feel and what your plans are for the day, as well as the progress being made. Research, draft, and publish articles and blog posts. Archive all work. Keep track of poetry, prose, and other creative work being written as well.
        </li>
        
        <li>
            <strong>Focus on deep work, effective tasks, and self-education.</strong>
            Prioritize time to your most important tasks, namely learning and working. Ensure progress is being made in classes both online and in real life. Large amounts of time should be dedicated to tasks that make progress towards goals.
        </li>
        
        <li>
            <strong>Be grateful for what you have, stop and breathe—Take stock of it all.</strong>
            Focus on the many good things in life, as well as contemplate where you're able to do better and improve. Relax, slow down, breath in and out, and think of the bigger picture. Take time to recite morning and religious prayers, memorize them.
        </li>
        
        <li>
            <strong>Eat Healthy and Eat Less—Practice veganism, sobriety, and OMAD.</strong>
            Be mindful of what you're eating, and only eat at the dinner table. Look over cookbooks for inspiration and add items to your recipe box. Don't waste money or calories on junk food or eating out. Take time for spiritual fasting as well.
        </li>
        
        <li>
            <strong>Keep yourself active, stand up as much as you can, work out often.</strong>
            Maintain physical fitness on a daily basis. Take some time out of your day to go for a jog, practice at-home routines. There are plenty of opportunities to get active.
        </li>
        
        <li>
            <strong>Practice frugality—You already have everything that you need.</strong>
            Don't waste your money or your time, you have less of both than you think. Don't shop unless it's essential, and don't do things that aren't essential to do, unless you enjoy doing them. Figure out ways to maximize both each day.
        </li>
        
        <li>
            <strong>Archive everything meaningful and important into the Commonplace.</strong>
            Don't let the important and interesting slip away easily. Save everything you find throughout the day in one place, and categorize these things consistently.
        </li>
        
        <li>
            <strong>Just Relax! Have fun and play. Don't just work all day.</strong>
            Don't forget to spend time on creative projects, as well as wind down at the end of the day. Spend as much time on analogue activities as you can. Wander aimlessly.
        </li>
    </ol>
</div>

<!-- Frameworks -->
<div class="content-section">
    <h2>🎯 The Framework: How to Replicate This</h2>
    
    <h3>Phase 1: Foundation (Weeks 1-4)</h3>
    <div class="highlight-box">
        <p><strong>Start with 3-5 goals maximum.</strong> Choose things you're already somewhat doing but want to do more consistently. Use automated tracking where possible (RescueTime, Fitbit, GitHub, etc.).</p>
        <p><strong>Create your accountability system.</strong> For me, this was weekly blog posts. For you, it might be sharing on social media, a Discord community, or weekly emails to a friend.</p>
    </div>
    
    <h3>Phase 2: Building Momentum (Weeks 5-12)</h3>
    <div class="highlight-box">
        <p><strong>Add one new goal every 2-3 weeks.</strong> Only add when the previous goals feel automatic. Watch for the "Hawthorne Effect"—measurement alone improves behavior.</p>
        <p><strong>Implement safety valves.</strong> Use breaks, weekends off, and "meta" goals to prevent burnout.</p>
    </div>
    
    <h3>Phase 3: Optimization (Weeks 13-26)</h3>
    <div class="highlight-box">
        <p><strong>Fine-tune your rates.</strong> Use auto-ratchet to prevent coasting. Archive goals that aren't working. Double down on what feels good.</p>
        <p><strong>Build supporting systems.</strong> Add daily check-ins, morning pages, gratitude practices—meta habits that support all others.</p>
    </div>
    
    <h3>Phase 4: Equilibrium (Week 27+)</h3>
    <div class="highlight-box">
        <p><strong>Maintain without overthinking.</strong> At this point, the habits should feel natural. The systems run themselves. You're no longer "trying"—you're just doing.</p>
    </div>
</div>

<!-- Call to Action -->
<div class="content-section" style="text-align: center; background: linear-gradient(135deg, rgba(102, 126, 234, 0.1), rgba(118, 75, 162, 0.1));">
    <h2>🚀 Ready to Start Your Own Experiment?</h2>
    <p style="font-size: 1.1rem; margin-bottom: 2rem;">Join the Beeminder community and transform your intentions into action.</p>
    
    <div style="display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap; margin-top: 2rem;">
        <a href="https://beeminder.com" class="download-btn" target="_blank" rel="noopener">
            🐝 Try Beeminder
        </a>
        <a href="/" class="download-btn secondary">
            📖 Read the Full Journal
        </a>
    </div>
</div>

<!-- Support Section -->
<div class="content-section" style="text-align: center; border: 2px solid #667eea;">
    <h2>💜 Found This Helpful?</h2>
    <p style="font-size: 1.1rem; line-height: 1.7; max-width: 600px; margin: 0 auto 2rem;">
        This guide represents 24 months of daily effort, 70 weekly blog posts, and countless hours of self-experimentation. If you found value in these insights, consider supporting my work!
    </p>
    
    <div style="display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap; margin-top: 1.5rem;">
        <a href="https://ko-fi.com/brennan" class="download-btn" target="_blank" rel="noopener" style="background: linear-gradient(135deg, #FF5E5B, #ED4B82);">
            ☕ Buy Me a Coffee
        </a>
        <a href="https://github.com/sponsors/brennanbrown" class="download-btn" target="_blank" rel="noopener" style="background: linear-gradient(135deg, #24292e, #586069);">
            ❤️ GitHub Sponsors
        </a>
    </div>
    
    <p style="margin-top: 1.5rem; font-size: 0.95rem; color: #718096; font-style: italic;">
        Your support helps me continue creating free resources and tools for the productivity community.
    </p>
</div>

</div>
