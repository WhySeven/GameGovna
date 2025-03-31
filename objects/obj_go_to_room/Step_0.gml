event_inherited();
if(isClickable){
	if(isClickedOnObj){
		var room_to_go_info = room_get_info(room_to_go);
		var room_to_go_exists_button = false;
		for(var i = 0; i < array_length(room_to_go_info.instances);i++){
			if(room_to_go_info.instances[i].object_index == "obj_go_to_previous_room"){
				room_to_go_exists_button = true;
				break;
			}
		}
		if(!room_to_go_exists_button){
			var button_create = room_instance_add(room_to_go,
			camera_get_view_x(view_camera[1])+
			camera_get_view_width(view_camera[1])/2,
			camera_get_view_y(view_camera[1])+
			camera_get_view_height(view_camera[1]),
			obj_go_to_previous_room);
			ds_list_add(global.temp_room,button_create);
			ds_list_add(global.temp_room,room);
		}
		room_goto(room_to_go);
	}
}