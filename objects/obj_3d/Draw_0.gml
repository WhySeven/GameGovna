var xcos,ysin,ztan;
xcos = x+dcos(face);
ysin = y-dsin(face);
ztan = z+zto+dtan(pitch);
draw_set_color(c_black);
draw_rectangle(0,0,50,50,false);
draw_set_color(c_white);
draw_text(0,0,pitch);

//var view_mat =  matrix_build_lookat(0, 0, 300, room_width, room_height, 0, 0, 0, -1);
var view_mat =  matrix_build_lookat(x, y, z+zto, xcos, ysin, ztan, 0, 0, 0);
var proj_mat = matrix_build_projection_perspective_fov(FOV,ASPECT_RATIO,1,8192);
var camera = camera_get_active();
camera_set_view_mat(camera,view_mat);
camera_set_proj_mat(camera, proj_mat);
camera_apply(camera);

vertex_submit(vbuffer,pr_trianglelist,sprite_get_texture(spr_invenory_selected_slot,0));