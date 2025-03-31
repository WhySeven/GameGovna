
x=room_width/2;
y=room_height/2;
z = 2000;

FOV = 90;
ASPECT_RATIO = window_get_width()/window_get_height();

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);



vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format = vertex_format_end();
vbuffer = vertex_create_buffer();

vertex_begin(vbuffer,vertex_format);

var zz = z;
var rmw = room_width;
var rmh = room_height;
var gap = 1000;
vertex_add_square(vbuffer,0,0,0,rmw/2-gap,rmh,zz,c_white);
vertex_add_square(vbuffer,rmw,0,0,rmw/2+gap,rmh,zz,c_white);

/*
vertex_add_point(vbuffer,  0,	 0,		zz,		0,0,1,  0,0,  c_white,1);
vertex_add_point(vbuffer,  0+rmw,0,		zz,		0,0,1,  1,0,  c_white,1);
vertex_add_point(vbuffer,  0+rmw,0+rmh,	zz,		0,0,1,  1,1,  c_white,1);

vertex_add_point(vbuffer,  0+rmw,0+rmh,	zz,		0,0,1,  1,1,  c_white,1);
vertex_add_point(vbuffer,  0,	 0+rmh,	zz,		0,0,1,  0,1,  c_white,1);
vertex_add_point(vbuffer,  0,	 0,		zz,		0,0,1,  0,0,  c_white,1);
*/
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
