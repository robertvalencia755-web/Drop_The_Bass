var _dt = delta_time / 1000000;

switch (songState) {
    case RhythmState.PreStart:
        // 1. Pre-roll countdown
        songTime += _dt;
        if (songTime >= 0) {
            songState = RhythmState.Playing;
            songInstance = audio_play_sound(song.songRef, 1, false);
        }
        
        // Spawn early notes that need to hit on or right after beat 0
        updateSpawning();
        break;

    case RhythmState.Playing:
        // 2. Track position sync
        if (audio_is_playing(songInstance)) {
            var _trackPos = audio_sound_get_track_position(songInstance);
            songTime = (_trackPos > songTime) ? _trackPos : songTime + _dt;
        } else {
            songTime += _dt;
        }

        // Spawn notes within travelTime
        updateSpawning();

        // Check completion (goal reached or song completed)
		var _failure = (points < 0);
        var _success = (points >= goal);
        var _songFinished = (songTime >= song.duration && beatmapIndex >= array_length(beatMap));

        if (_success || _songFinished) {
            finishGame(_success);
        } else if (_failure){
			finishGame(!_failure);
		}
			
        break;

    case RhythmState.Delay:
        // 3. Post-game delay (e.g. 3-second pause to see score)
        delayTimer -= _dt;
        if (delayTimer <= 0) {
            songState = RhythmState.Fading;
        }
        break;

    case RhythmState.Fading:
        // 4. Fade to black then transition
        fadeAlpha += _dt / fadeDuration;
        if (fadeAlpha >= 1.0) {
            fadeAlpha = 1.0;
            songState = RhythmState.Completed;
            room_goto(Main_World);
        }
        break;

    case RhythmState.Completed:
        // Room transition in progress
        break;
}

