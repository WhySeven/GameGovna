// Переход в другую комнату (замените "room_next" на имя вашей комнаты)
if (room_exists(rm_road)) {
    room_goto(rm_road);
} else {
    show_debug_message("Комната не найдена!");
}