if (keyboard_check_pressed(vk_escape)) {
	if(room = rm_menu){game_end();}else{room_goto(rm_menu);}
}