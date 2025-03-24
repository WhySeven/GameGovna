event_inherited();
if(isClickedOnObj&&isClickable){
	view_set_camera(
		1,
		camera_create_view(
			x-zoom_size_x/2+zoom_x_correction,
			y-zoom_y_correction,
			zoom_size_x,
			zoom_size_y
		)
	);
	var button = instance_create_layer(
	camera_get_view_x(view_camera[1])+
	camera_get_view_width(view_camera[1])/2,
	camera_get_view_y(view_camera[1])+
	camera_get_view_height(view_camera[1])-75,
	"inst_button",
	obj_zoom_out_button);
	isClickable=false;
}

if(!isClickable){objs_to_interact_when_zoomed[0].isClickable = true;
}
else{objs_to_interact_when_zoomed[0].isClickable = false;}