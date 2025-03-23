// Проверяем, достиг ли объект конца пути
if (path_index != -1 && path_position >= 0.9) {
    transition_timer += 1; // Увеличиваем таймер
    show_debug_message("Таймер: " + string(transition_timer));

    // Ждем 1 секунду (60 кадров)
    if (transition_timer >= 30) {
        path_end(); // Завершаем путь
        show_debug_message("Переход в комнату: " + string(next_room));
        room_goto(next_room); // Переходим в указанную комнату
    }
}