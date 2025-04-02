window_set_fullscreen(true);
room_goto(rm_menu);

//Inventory
global.items = array_create(8);
//list for save room to go for obj_go_to_room
global.temp_room = ds_list_create();

#region rm_tour_room global.variables
global.exists_pie = true;
global.pie_image_index = 0;
global.exists_vilka = true;
#endregion