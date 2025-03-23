// Step Event
show_debug_message("Капля движется: x=" + string(x) + ", y=" + string(y));
if (y > room_height || x < 0 || x > room_width) {
    instance_destroy();
}