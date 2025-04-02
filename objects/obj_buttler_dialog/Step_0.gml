if (mouse_check_button_pressed(mb_left)) {
    // Переключаемся на следующую строку
    current_line += 1;

    // Если строки закончились, скрываем окно и уничтожаем объект
    if (current_line >= array_length(dialog_lines)) {
        is_visible = false;
        instance_destroy();
    }
}