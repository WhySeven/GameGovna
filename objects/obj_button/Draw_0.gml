// Рисуем кнопку и текст
draw_self(); // Рисует спрайт кнопки
draw_set_color(c_white); // Цвет текста
draw_set_halign(fa_center); // Выравнивание по центру
draw_set_valign(fa_middle);
draw_text(x, y, button_text);