x=room_width/2;
y=room_height/2;
z = 0;
zto = 16;
face = 0;
pitch = 180;

FOV = 80;
ASPECT_RATIO = display_get_width()/display_get_height();

SENSITIVITY = 10;

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

depth = 9999;

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();
vbuffer = vertex_create_buffer();

vertex_begin(vbuffer,vertex_format);

var zz = 1580;
var rmw = room_width;
var rmh = room_height;
vertex_add_point(vbuffer,  0,	 0,		zz,		0,0,1,  0,0,  c_white,1);
vertex_add_point(vbuffer,  0+rmw,0,		zz,		0,0,1,  0,0,  c_white,1);
vertex_add_point(vbuffer,  0+rmw,0+rmh,	zz,		0,0,1,  0,0,  c_white,1);

vertex_add_point(vbuffer,  0+rmw,0+rmh,	zz,		0,0,1,  0,0,  c_white,1);
vertex_add_point(vbuffer,  0,	 0+rmh,	zz,		0,0,1,  0,0,  c_white,1);
vertex_add_point(vbuffer,  0,	 0,		zz,		0,0,1,  0,0,  c_white,1);

/*
var dif = 32;
for(var i = 0; i<room_width;i+=dif){
	for(var j = 0; j<room_height; j+=dif){
		vertex_add_point(vbuffer,  i,	 j,		zz,		0,0,1,  0,0,  c_white,1);
		vertex_add_point(vbuffer,  i+dif,j,		zz,		0,0,1,  0,0,  c_white,1);
		vertex_add_point(vbuffer,  i+dif,j+dif,	zz,		0,0,1,  0,0,  c_white,1);

		vertex_add_point(vbuffer,  i+dif,j+dif,	zz,		0,0,1,  0,0,  c_blue,1);
		vertex_add_point(vbuffer,  i,	 j+dif,	zz,		0,0,1,  0,0,  c_blue,1);
		vertex_add_point(vbuffer,  i,	 j,		zz,		0,0,1,  0,0,  c_blue,1);
	}
}
*/

vertex_end(vbuffer);
