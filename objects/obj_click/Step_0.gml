if(isClicable)
{
	isHovered = position_meeting(mouse_x,mouse_y,self);
	isClick = mouse_check_button_released(mb_left);
	isClickedOnObj = isHovered*isClick;
	if(isHovered){image_blend = c_gray;}else{image_blend=c_white;}
}