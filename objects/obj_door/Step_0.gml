/*hover_on_obj = position_meeting(mouse_x, mouse_y, obj_door);

if (hover_on_obj) {
    // Если курсор над объектом и звук ещё не воспроизводился
    if (!sound_played) {
        audio_play_sound(snd_chain, 1, false); // Воспроизводим звук
        sound_played = true; // Устанавливаем флаг, чтобы звук не воспроизводился повторно
    }

    // Меняем спрайт на следующий (например, спрайт с индексом 1)
    image_index = 1;

    // Если левая кнопка мыши отпущена, переходим в следующую комнату
    if (mouse_check_button_released(mb_left)) {
        room_goto_next(); // Переход в следующую комнату
    }
} else {
    // Если курсор не над объектом, сбрасываем флаги и возвращаем исходный спрайт
    sound_played = false; // Сбрасываем флаг воспроизведения звука
    image_index = 0; // Возвращаем исходный спрайт (например, спрайт с индексом 0)
}*/
event_inherited();