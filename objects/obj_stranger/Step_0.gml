
if (image_angle=5){rotate_right = false;}
if (image_angle=-5){rotate_right = true;}
if(rotate_right){image_angle+=0.05;}else{image_angle-=0.05;}
if(position_meeting(mouse_x,mouse_y,obj_stranger)){
	if (mouse_check_button_released(mb_left)){image_yscale +=2; with_Vilka = true;}
	//if(isScaled==false){ image_xscale+=1; image_yscale+=1; isScaled=true;}
}
/*else{
	if(isScaled==true){image_xscale-=1; image_yscale-=1; isScaled=false;}
}