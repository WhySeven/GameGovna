// Массив строк диалога
dialog_lines = [
    "Hello, im butler",
    "Hello",
    "The night is beautiful",
    "Hope ure doin well"
];

// Текущая строка диалога
current_line = 0;

// Позиция и размер диалогового окна
dialog_width = 400; // Ширина окна
dialog_height = 150; // Высота окна
dialog_x = room_width / 2 - dialog_width / 2; // Центрирование по X
dialog_y = room_height / 2 + dialog_height / 2; // Центрирование по Y

// Цвета
bg_color = c_black; // Черный фон
bg_alpha = 0.7; // Полупрозрачность фона
text_color = c_white; // Белый текст

// Шрифт
text_font = fnt_main; // Укажите ваш шрифт
text_size = 20; // Размер шрифта

// Состояние диалога
is_visible = true; // Видимость окна