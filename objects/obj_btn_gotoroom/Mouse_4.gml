// Переход в другую комнату (замените "room_next" на имя вашей комнаты)
if (room_exists(rm_tour_room)) {
    room_goto(rm_tour_room);
} else {
    show_debug_message("Комната не найдена!");
}