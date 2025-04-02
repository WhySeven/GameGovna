if (is_visible) {
    // Рисуем полупрозрачный черный фон
    draw_set_alpha(bg_alpha);
    draw_set_color(bg_color);
    draw_rectangle(dialog_x, dialog_y, dialog_x + dialog_width, dialog_y + dialog_height, false);
    draw_rectangle(dialog_x, dialog_y, dialog_x + dialog_width, dialog_y + dialog_height, true);
    draw_set_alpha(1); // Сбрасываем прозрачность

    // Рисуем текст
    draw_set_font(text_font);
    draw_set_color(text_color);
    draw_set_halign(fa_center); // Выравнивание текста по центру
    draw_set_valign(fa_middle); // Выравнивание текста по середине
    draw_text_ext(dialog_x + dialog_width / 2, dialog_y + dialog_height / 2, dialog_lines[current_line], text_size, dialog_width - 20);
}