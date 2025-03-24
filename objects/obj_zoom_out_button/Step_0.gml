/*isOnObj = position_meeting(mouse_x,mouse_y,obj_navigate_back);
if(isOnObj){
	if (mouse_check_button_pressed(mb_left)){
		view_set_camera(1,camera_create_view(0,0,1920,1080));
		obj_stranger.clicked=false;
		instance_destroy(self);
	}
}*/
event_inherited();
if(isClickedOnObj){
	//view_set_camera(1,camera_create_view(0,0,1920,1080));
	//obj_zoom_in.isClicable=true;
	x+=30;
	//instance_destroy(self);
	
}