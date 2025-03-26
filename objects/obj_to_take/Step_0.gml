event_inherited();
if(isClickable){
	if(isClickedOnObj){
		obj_inventory.push_item(self);
		instance_destroy(self);
	}
}