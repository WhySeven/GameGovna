event_inherited();
if (image_angle=5){rotate_right = false;}
if (image_angle=-5){rotate_right = true;}
if(rotate_right){image_angle+=0.05;}else{image_angle-=0.05;}
	//if(isScaled==false){ image_xscale+=1; image_yscale+=1; isScaled=true;}

/*else{
	if(isScaled==true){image_xscale-=1; image_yscale-=1; isScaled=false;}
} camera_get_view_x(1),camera_get_view_y(1),