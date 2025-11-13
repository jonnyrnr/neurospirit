document.addEventListener("DOMContentLoaded", function() {
    console.log("Sonic Scape Media website loaded!");
    
    // Animate progress bar on page load
    const progressBar = document.getElementById('progressBar');
    if (progressBar) {
        // Start from 0 and animate to target width
        progressBar.style.width = '0%';
        setTimeout(function() {
            progressBar.style.width = '75%';
        }, 100);
    }
});
