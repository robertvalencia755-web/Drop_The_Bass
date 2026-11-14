
paused = !paused;

if (paused) {
    // Deactivate all objects EXCEPT this pause controller
	pause();
} else {
    // Reactivate everything to resume the game
	unpause();
}