/**
 * Modern Interactive Features for Journal.Kim
 * Updated: October 2025
 */

// Smooth scroll progress indicator
function updateScrollProgress() {
    const scrollProgress = document.querySelector('.scroll-progress');
    if (!scrollProgress) return;
    
    const windowHeight = window.innerHeight;
    const documentHeight = document.documentElement.scrollHeight;
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    const scrollPercentage = (scrollTop / (documentHeight - windowHeight)) * 100;
    
    scrollProgress.style.width = scrollPercentage + '%';
}

// Scroll to top button
function initScrollToTop() {
    const scrollBtn = document.querySelector('.scroll-to-top');
    if (!scrollBtn) return;
    
    window.addEventListener('scroll', () => {
        if (window.pageYOffset > 300) {
            scrollBtn.classList.add('visible');
        } else {
            scrollBtn.classList.remove('visible');
        }
    });
    
    scrollBtn.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
}

// Reveal on scroll animation - DISABLED for less animation
function initRevealOnScroll() {
    // Immediately show all reveal elements without animation
    const reveals = document.querySelectorAll('.reveal');
    reveals.forEach(element => {
        element.classList.add('active');
    });
}

// Add smooth scroll behavior to all anchor links
function initSmoothScroll() {
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            const href = this.getAttribute('href');
            if (href === '#') return;
            
            e.preventDefault();
            const target = document.querySelector(href);
            
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });
}

// Add reading time estimate
function addReadingTime() {
    const article = document.querySelector('.post');
    if (!article) return;
    
    const text = article.textContent;
    const wordsPerMinute = 200;
    const wordCount = text.trim().split(/\s+/).length;
    const readingTime = Math.ceil(wordCount / wordsPerMinute);
    
    const header = article.querySelector('header');
    if (header) {
        const readingTimeEl = document.createElement('div');
        readingTimeEl.className = 'reading-time';
        readingTimeEl.innerHTML = `<span style="color: #718096; font-size: 0.9rem;">📖 ${readingTime} min read</span>`;
        header.appendChild(readingTimeEl);
    }
}

// Add copy button to code blocks
function addCopyButtons() {
    const codeBlocks = document.querySelectorAll('.highlight');
    
    codeBlocks.forEach(block => {
        const button = document.createElement('button');
        button.className = 'copy-button';
        button.innerHTML = '📋 Copy';
        button.style.cssText = `
            position: absolute;
            top: 10px;
            right: 10px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 6px;
            cursor: pointer;
            font-size: 0.85rem;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 2px 10px rgba(0,0,0,0.2);
        `;
        
        block.style.position = 'relative';
        
        button.addEventListener('click', async () => {
            const code = block.querySelector('code, pre').textContent;
            
            try {
                await navigator.clipboard.writeText(code);
                button.innerHTML = '✓ Copied!';
                button.style.background = 'linear-gradient(135deg, #43e97b, #38f9d7)';
                
                setTimeout(() => {
                    button.innerHTML = '📋 Copy';
                    button.style.background = 'linear-gradient(135deg, #667eea, #764ba2)';
                }, 2000);
            } catch (err) {
                console.error('Failed to copy:', err);
                button.innerHTML = '✗ Failed';
            }
        });
        
        button.addEventListener('mouseenter', () => {
            button.style.transform = 'scale(1.05)';
            button.style.boxShadow = '0 4px 15px rgba(102, 126, 234, 0.4)';
        });
        
        button.addEventListener('mouseleave', () => {
            button.style.transform = 'scale(1)';
            button.style.boxShadow = '0 2px 10px rgba(0,0,0,0.2)';
        });
        
        block.appendChild(button);
    });
}

// Enhance external links
function enhanceExternalLinks() {
    const links = document.querySelectorAll('a[href^="http"]');
    
    links.forEach(link => {
        if (!link.hostname.includes(window.location.hostname)) {
            link.setAttribute('target', '_blank');
            link.setAttribute('rel', 'noopener noreferrer');
            
            // Add external link icon
            const icon = document.createElement('span');
            icon.innerHTML = ' ↗';
            icon.style.cssText = 'font-size: 0.8em; opacity: 0.6;';
            link.appendChild(icon);
        }
    });
}

// Add table of contents for long posts
function addTableOfContents() {
    const article = document.querySelector('.post');
    if (!article) return;
    
    const headings = article.querySelectorAll('h2, h3');
    if (headings.length < 3) return; // Only add TOC if there are enough headings
    
    const toc = document.createElement('div');
    toc.className = 'table-of-contents';
    toc.style.cssText = `
        background: white;
        padding: 1.5rem;
        margin: 2rem 0;
        border-radius: 12px;
        box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        border-left: 4px solid;
        border-image: linear-gradient(135deg, #667eea, #764ba2) 1;
    `;
    
    const title = document.createElement('h3');
    title.textContent = '📑 Table of Contents';
    title.style.cssText = 'margin-top: 0; color: #2d3748;';
    toc.appendChild(title);
    
    const list = document.createElement('ul');
    list.style.cssText = 'list-style: none; padding-left: 0;';
    
    headings.forEach((heading, index) => {
        const id = `heading-${index}`;
        heading.id = id;
        
        const li = document.createElement('li');
        li.style.cssText = `
            margin: 0.5rem 0;
            ${heading.tagName === 'H3' ? 'padding-left: 1.5rem;' : ''}
        `;
        
        const link = document.createElement('a');
        link.href = `#${id}`;
        link.textContent = heading.textContent;
        link.style.cssText = 'color: #667eea; text-decoration: none; transition: all 0.3s;';
        
        link.addEventListener('mouseenter', () => {
            link.style.transform = 'translateX(5px)';
            link.style.color = '#764ba2';
        });
        
        link.addEventListener('mouseleave', () => {
            link.style.transform = 'translateX(0)';
            link.style.color = '#667eea';
        });
        
        li.appendChild(link);
        list.appendChild(li);
    });
    
    toc.appendChild(list);
    
    // Insert TOC after the first paragraph
    const firstParagraph = article.querySelector('p');
    if (firstParagraph) {
        firstParagraph.after(toc);
    }
}

// Lazy load images
function initLazyLoading() {
    const images = document.querySelectorAll('img[data-src]');
    
    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                img.removeAttribute('data-src');
                observer.unobserve(img);
            }
        });
    });
    
    images.forEach(img => imageObserver.observe(img));
}

// Initialize all features when DOM is ready
document.addEventListener('DOMContentLoaded', () => {
    // Create scroll progress bar
    const progressBar = document.createElement('div');
    progressBar.className = 'scroll-progress';
    document.body.prepend(progressBar);
    
    // Create scroll to top button
    const scrollBtn = document.createElement('div');
    scrollBtn.className = 'scroll-to-top';
    document.body.appendChild(scrollBtn);
    
    // Initialize all features
    updateScrollProgress();
    initScrollToTop();
    initRevealOnScroll();
    initSmoothScroll();
    addReadingTime();
    addCopyButtons();
    enhanceExternalLinks();
    addTableOfContents();
    initLazyLoading();
    
    // Update scroll progress on scroll
    window.addEventListener('scroll', updateScrollProgress);
    
    // Add hover effect to all images
    document.querySelectorAll('.post img').forEach(img => {
        img.style.cursor = 'pointer';
        img.addEventListener('click', () => {
            window.open(img.src, '_blank');
        });
    });
});

// Add keyboard shortcuts
document.addEventListener('keydown', (e) => {
    // Press 'T' to scroll to top
    if (e.key === 't' || e.key === 'T') {
        if (!e.target.matches('input, textarea')) {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        }
    }
    
    // Press 'B' to scroll to bottom
    if (e.key === 'b' || e.key === 'B') {
        if (!e.target.matches('input, textarea')) {
            window.scrollTo({ top: document.body.scrollHeight, behavior: 'smooth' });
        }
    }
});

console.log('🎨 Modern Journal.Kim loaded successfully!');
