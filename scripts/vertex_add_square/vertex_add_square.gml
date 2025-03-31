function vertex_add_square(vbuffer,x1,y1,z1,x2,y2,z2,color){
	vertex_add_point(vbuffer,  x1,y1,z1,		0,0,1,  0,0,  color,1);
	vertex_add_point(vbuffer,  x2,y1,z2,		0,0,1,  1,0,  color,1);
	vertex_add_point(vbuffer,  x2,y2,z2,		0,0,1,  1,1,  color,1);

	vertex_add_point(vbuffer,  x2,y2,z2,		0,0,1,  1,1,  color,1);
	vertex_add_point(vbuffer,  x1,y2,z1,		0,0,1,  0,1,  color,1);
	vertex_add_point(vbuffer,  x1,y1,z1,		0,0,1,  0,0,  color,1);

}
