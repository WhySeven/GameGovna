path_start(pth_car, 5, path_action_stop, false); // Начинаем движение по пути
image_index = 0; // Устанавливаем начальный кадр анимации
image_speed = 0; // Останавливаем анимацию
next_room = rm_entry_door; // Указываем комнату для перехода
transition_timer = 0; // Таймер для задержки перехода