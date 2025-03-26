isClickable = true;
var cam = view_get_camera(1);
image_yscale=2;
image_xscale=2;
image_yscale *= camera_get_view_height(cam)/room_height;
image_xscale *= camera_get_view_width(cam)/room_width;