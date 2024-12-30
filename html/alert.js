window.addEventListener('message', (event) => {
    if (event.data.type === 'showAlert') {
        const alertBox = document.getElementById('alert-box');
        const alertMessage = document.getElementById('alert-message');
        const alertSound = document.getElementById('alert-sound');

        alertMessage.innerText = event.data.message;
        alertBox.style.display = 'block'; // Show the alert box
        alertSound.play(); // Play the alert sound

        // Hide the alert after 5 seconds
        setTimeout(() => {
            alertBox.style.display = 'none';
        }, 5000);
    }
});
