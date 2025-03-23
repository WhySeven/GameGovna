// В событии Room Start или Create
if (audio_is_playing(snd_heavyrain)) {
    audio_stop_sound(snd_heavyrain); // Воспроизводим фоновую музыку
}