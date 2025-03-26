x=mouse_x;
y=mouse_y;
var cam = view_get_camera(1);
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);
image_xscale=cw/room_width*scale_multiplier;
image_yscale=ch/room_height*scale_multiplier;
/*
if(isNeedToScale){
	image_yscale *= camera_get_view_height(cam)/room_height;
	image_xscale *= camera_get_view_width(cam)/room_width;
	temp_scale = camera_get_view_width(cam)/room_width;
	isNeedToScale = false;
}
if(temp_scale!=camera_get_view_width(cam)/room_width){isNeedToScale=true;}