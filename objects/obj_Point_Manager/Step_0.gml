var _dt = delta_time / 1000000;

switch (songState) {
    case State.PreStart:
        // 1. Pre-roll countdown
        songTime += _dt;
        if (songTime >= 0) {
            songState = State.Playing;
            songInstance = audio_play_sound(song.songRef, 1, false);
        }
        
        // Spawn early notes that need to hit on or right after beat 0
        updateSpawning();
        break;

    case State.Playing:
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
        var _success = (points >= goal);
        var _songFinished = (songTime >= song.duration && beatmapIndex >= array_length(beatMap));

        if (_success || _songFinished) {
            finishGame(_success);
        }
        break;

    case State.Delay:
        // 3. Post-game delay (e.g. 3-second pause to see score)
        delayTimer -= _dt;
        if (delayTimer <= 0) {
            songState = State.Fading;
        }
        break;

    case State.Fading:
        // 4. Fade to black then transition
        fadeAlpha += _dt / fadeDuration;
        if (fadeAlpha >= 1.0) {
            fadeAlpha = 1.0;
            songState = State.Completed;
            room_goto(Main_World);
        }
        break;

    case State.Completed:
        // Room transition in progress
        break;
}

