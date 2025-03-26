if(string(global.temp_room[|ds_list_find_index(global.temp_room,self.id)])=="undefined"){instance_destroy(self);}
isClickable = true;

previous_room=global.temp_room[|ds_list_find_index(global.temp_room,self.id)+1];

/*show_message(string(
			"размер списка: {0} / место кнопки: {1} / место румы: {2}",
			ds_list_size(global.temp_room)
			//ds_list_find_index(global.temp_room,button_create),
			//ds_list_find_index(global.temp_room,room)
		));
show_message(string("объект: {0} / румa {1}",global.temp_room[|ds_list_find_index(global.temp_room,self.id)],previous_room));