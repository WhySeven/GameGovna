// В событии Room Start или Create
if (!audio_is_playing(snd_heavyrain)) {
    audio_play_sound(snd_heavyrain, 10, true); // Воспроизводим фоновую музыку
}