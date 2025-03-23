if (mouse_check_button_released(mb_left)&&obj_VILKA.isInHand&& position_meeting(mouse_x,mouse_y,obj_TORT)){
	//image_xscale-=1;image_yscale-=1;
	if(image_index<3){
		image_index +=1;
		audio_play_sound(Sound1,1,false);
	}
}