
if(isClickable)
{
	isHovered = position_meeting(mouse_x,mouse_y,self);
	isClicked = mouse_check_button_released(mb_left);
	isClickedOnObj = isHovered*isClicked;
	if(isHovered){
		image_blend = c_gray;
	}else{
		image_blend=c_white;
	}
}else{
	image_blend=c_white;
}