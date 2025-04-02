if(global.exists_pie==false){instance_destroy(self);}
image_index = global.pie_image_index;
event_inherited();
isClickable = false;
image_speed = 0;
isTimeToScreamer=false;
timer_start=false;
timer = room_speed*1;