var songTime = audio_sound_get_track_position(songInstance) * 1000;

while (
    beatmapIndex < array_length(beatmap) &&
    songTime >= beatmap[beatmapIndex]
) {
	coord = calcSpawn();
    spawnNote(coord[0], coord[1]); 

    beatmapIndex++;
}