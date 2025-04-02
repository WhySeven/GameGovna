event_inherited();
if(isClickedOnObj){
	view_set_camera(1,camera_create_view(0,0,room_width,room_height));
	zoom_in_instance._isClickedOnZoomOut();
	instance_destroy(self);
}
