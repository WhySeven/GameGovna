event_inherited();
if(isClickedOnObj&&isClickable){

	view_set_camera(1,camera_create_view(x-576/2,y-384/2,576,324));
	var button = instance_create_layer(
	camera_get_view_x(view_camera[1])+
	camera_get_view_width(view_camera[1])/2,
	camera_get_view_y(view_camera[1])+
	camera_get_view_height(view_camera[1])-75,
	"inst_button",
	obj_zoom_out_button);
	isClickable=false;
}