event_inherited();

if(isClickable){
	if(isClickedOnObj){
		instance_destroy(self.id);
		//show_message(ds_list_find_index(global.temp_room,self.id));
		//show_message(ds_list_find_index(global.temp_room,previous_room));
		ds_list_delete(global.temp_room,ds_list_find_index(global.temp_room,self.id));
		ds_list_delete(global.temp_room,ds_list_find_index(global.temp_room,previous_room));
		//show_message(ds_list_find_index(global.temp_room,self.id));
		/*for(var i = 0 ; i <ds_list_size(global.temp_room);i++){
			
			show_message(global.temp_room[|i]);
		}*/
		
		room_goto(previous_room);
	
	}
}