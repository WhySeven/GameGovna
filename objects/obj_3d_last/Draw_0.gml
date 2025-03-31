var view_mat =  matrix_build_lookat(x, y, 0, x+1, y, z, 0, 1,0);
var proj_mat = matrix_build_projection_perspective_fov(FOV,ASPECT_RATIO,1,8192);
var camera = camera_get_active();
camera_set_view_mat(camera,view_mat);
camera_set_proj_mat(camera, proj_mat);
camera_apply(camera);

vertex_submit(vbuffer,pr_trianglelist,sprite_get_texture(spr_background_1,0));