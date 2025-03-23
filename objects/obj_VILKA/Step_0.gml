if(position_meeting(mouse_x,mouse_y,obj_VILKA)){
	if (mouse_check_button_released(mb_left)){
		if(!isInHand){
		audio_play_sound(Sound2,1,false);}
		isInHand = true;
	}
	isOnObj = true;
}else{isOnObj=false;}
if(isOnObj&&!isInHand){
	if(isScaled==false){ image_xscale+=1; image_yscale+=1; isScaled=true;}
} 
else{
	if(isScaled==true){image_xscale-=1; image_yscale-=1; isScaled=false;}
}
if(isInHand){x=mouse_x+50;y=mouse_y;}