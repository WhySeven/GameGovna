event_inherited();
if(isClickable){
	if(isClickedOnObj){
		if(obj_inventory.items[obj_inventory.selected_slot]==obj_vilka){
			if(image_index<4){
				image_index +=1;
				if(image_index!=4){
					if(image_index==3){
						audio_play_sound(snd_blood,1,false);
					}else{audio_play_sound(snd_chop,1,false);}
				}else{
					obj_inventory.items[obj_inventory.selected_slot]=0;
					audio_play_sound(snd_scream,1,false);
					image_xscale=1;
					image_yscale=1;
					x = camera_get_view_x(view_camera[1]) + camera_get_view_width(view_camera[1])/2;
					y = camera_get_view_y(view_camera[1]) + camera_get_view_height(view_camera[1])/2;
					isTimeToScreamer = true;
				}
			}
		}else{audio_play_sound(snd_blood,1,false);}
	}
}
if(isTimeToScreamer){
	if(image_yscale<=18){
		image_yscale+=2;
		image_xscale+=2;
	}else{timer_start=true;}
}
if(timer_start){
	if(timer>0){timer--;}else{
		global.exists_pie=false;
		instance_destroy(self);
	}
}