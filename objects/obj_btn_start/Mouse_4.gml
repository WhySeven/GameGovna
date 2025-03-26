// Переход в другую комнату (замените "room_next" на имя вашей комнаты)
if (room_exists(rm_entry_door)) {
    room_goto(rm_entry_door);
} else {
    show_debug_message("Комната не найдена!");
}