// 1. Custom Cursor Follower
const cursor = document.querySelector('.cursor');
document.addEventListener('mousemove', (e) => {
    cursor.style.left = e.clientX + 'px';
    cursor.style.top = e.clientY + 'px';
});

// 2. Intersection Observer for Scroll Animations
const observerOptions = { threshold: 0.25 };

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('faded-in');
            // Optional: trigger specific animations for sections
            if(entry.target.id === 'terminal') {
                typeTerminalEffect(); 
            }
        }
    });
}, observerOptions);

document.querySelectorAll('section').forEach(section => {
    observer.observe(section);
});

// 3. Simple Click Effect
document.addEventListener('mousedown', () => cursor.style.transform = 'scale(0.8)');
document.addEventListener('mouseup', () => cursor.style.transform = 'scale(1)');
