event_inherited();
if(isClickable){
	if(isClickedOnObj){
		view_set_camera(1,camera_create_view(0,0,room_width,room_height));
		obj_zoom_in.isClickable=true;
		instance_destroy(self);
	}
}