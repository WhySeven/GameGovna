// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script1(){
// Step Event
if (keyboard_check_pressed(vk_escape)) {
    // Переключаем состояние меню
    with (obj_pause_menu) {
        menu_active = !menu_active;
        visible = menu_active;
        
        // Пауза игры при открытом меню (опционально)
        if (menu_active) {
            instance_deactivate_all(true); // Деактивируем все объекты, кроме меню
        } else {
            instance_activate_all(); // Возобновляем игру
        }
    }
}
}