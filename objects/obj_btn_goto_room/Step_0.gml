event_inherited();
if(isClickedOnObj){
	if(room_exists(room_to_go)){room_goto(room_to_go);}
	else{show_message("Set to instance room_to_go");}
}