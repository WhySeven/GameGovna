isOnObj = position_meeting(mouse_x,mouse_y,obj_VILKA);

if(obj_stranger.clicked){
	if(timer<=10){
	timer++;
	}else{
	if(isOnObj){
		if (mouse_check_button_released(mb_left)){
			if(!isInHand){
				audio_play_sound(Sound2,1,false);
				image_angle=0;
				image_yscale=3;
				image_xscale=3;
				view_set_camera(1,camera_create_view(0,0,1920,1080));
			}
			isInHand = true;
		}
	}
	if(isOnObj&&!isInHand){
		if(!isScaled){ 
			image_xscale*=1.2; 
			image_yscale*=1.2; 
			isScaled=true;
		}
	} 
	else{
		if(isScaled){
			image_xscale/=1.2; 
			image_yscale/=1.2; 
			isScaled=false;
		}
	}
}
}
if(isInHand){
	x=mouse_x+50;
	y=mouse_y;
}
