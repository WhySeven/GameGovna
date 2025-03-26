event_inherited();

if(isClickable){
	if(isClickedOnObj){
		button_create = room_instance_add(room_to_go,
		camera_get_view_x(view_camera[1])+
		camera_get_view_width(view_camera[1])/2,
		camera_get_view_y(view_camera[1])+
		camera_get_view_height(view_camera[1]),
		obj_go_to_previous_room);
		
		ds_list_add(global.temp_room,button_create);
		ds_list_add(global.temp_room,room);
		var list = ds_list_create();
		for(var i = 0 ; i <ds_list_size(global.temp_room);i++){
			//show_message(global.temp_room[|i]);
		}
		

		room_goto(room_to_go);
		
	}
}