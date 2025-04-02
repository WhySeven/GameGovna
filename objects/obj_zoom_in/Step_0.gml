event_inherited();
if(isClickedOnObj){
	//Смена камеры
	
	view_set_camera(
		1,
		camera_create_view(
			x-zoom_size_x/2+zoom_x_correction,
			y-zoom_y_correction,
			zoom_size_x,
			zoom_size_y
		)
	);
	_create_button_zoom_out();
	_objs_isClickable_change(_get_insts_from_layer(layer_of_objects_to_zoom),true);
	isClickable = false;
	
}

