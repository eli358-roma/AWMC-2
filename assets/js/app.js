// Auto-hide messages
document.addEventListener('DOMContentLoaded', function() {
    // Auto-hide messages after 5 seconds
    const messages = document.querySelectorAll('.message');
    messages.forEach(message => {
        setTimeout(() => {
            message.style.opacity = '0';
            message.style.transition = 'opacity 0.5s';
            setTimeout(() => message.remove(), 500);
        }, 5000);
    });
    
    // Focus sul campo di ricerca
    const searchInput = document.querySelector('input[name="search"]');
    if (searchInput) {
        searchInput.focus();
    }
});

console.log("✅ Chinese Dictionary loaded successfully!");
