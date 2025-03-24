
if (image_angle=5){rotate_right = false;}
if (image_angle=-5){rotate_right = true;}
if(rotate_right){image_angle+=0.05;}else{image_angle-=0.05;}
if(position_meeting(mouse_x,mouse_y,obj_stranger)){
	if (mouse_check_button_released(mb_left)&&clicked==false){
		view_set_camera(1,camera_create_view(1050,250,576,324));
		instance_create_layer(
			camera_get_view_x(view_camera[1])+
			camera_get_view_width(view_camera[1])/2,
			camera_get_view_y(view_camera[1])+
			camera_get_view_height(view_camera[1])-75,
			"inst_button",
			obj_zoom_out_button
		);
		clicked=true;
	}
	//if(isScaled==false){ image_xscale+=1; image_yscale+=1; isScaled=true;}
}
/*else{
	if(isScaled==true){image_xscale-=1; image_yscale-=1; isScaled=false;}
} camera_get_view_x(1),camera_get_view_y(1),