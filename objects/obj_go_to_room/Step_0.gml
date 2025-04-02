event_inherited();
if(isClickedOnObj){
	var _room_to_go_exists_button = function (_room_to_go){
		var exists_button = false;
		var room_to_go_info = room_get_info(_room_to_go);
		
		for(var i = 0; i < array_length(room_to_go_info.instances);i++){
			if(room_to_go_info.instances[i].object_index == "obj_go_to_previous_room"){
				exists_button = true;
				break;
			}
		}
		return exists_button;
	}
	if(!_room_to_go_exists_button(room_to_go)){
		var created_button = room_instance_add(room_to_go,
		camera_get_view_x(view_camera[1])+
		camera_get_view_width(view_camera[1])/2,
		camera_get_view_y(view_camera[1])+
		camera_get_view_height(view_camera[1]),
		obj_go_to_previous_room);
		
		ds_list_add(global.temp_room,created_button);
		ds_list_add(global.temp_room,room);
	}
	room_goto(room_to_go);
}
