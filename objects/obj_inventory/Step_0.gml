items = global.items;
push_item = function(_item){
	for(var i = 0;i<array_length(items);i++){
		if(items[i]==0){
			array_insert(items,i,_item.object_index);
			selected_slot=i;
			i=array_length(items);
		}
	}
}
var cam = view_get_camera(1);
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);

image_xscale=cw/room_width;
image_yscale=ch/room_height;
y = cy+ch/2-sprite_height/2;
x = cx+30*(cw/room_width);

if (mouse_wheel_down()&&selected_slot<7){selected_slot++;}
if (mouse_wheel_up()&&selected_slot>0){selected_slot--;}

if(items[selected_slot]==0){obj_cursor.sprite_index=spr_cursor;}
else{obj_cursor.sprite_index = object_get_sprite(items[selected_slot]);}