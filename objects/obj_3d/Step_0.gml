//face -= (display_mouse_get_x()-display_get_width()/2)/SENSITIVITY;
//pitch += (display_mouse_get_y()-display_get_height()/2)/SENSITIVITY;
//display_mouse_set(display_get_width()/2,display_get_height()/2);
pitch = clamp(pitch,-90,90);