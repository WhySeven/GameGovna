zoom_size_x = room_width/zoom_multiplier;
zoom_size_y = room_height/zoom_multiplier;
zoom_out_button_is_created = false;

//Создаётся массив элементов с нужного слоя
_get_insts_from_layer  = function (_inst_name){
	var _elements = layer_get_all_elements(_inst_name);
	var _inst_elements = array_create(array_length(_elements));
	for (var i = 0; i < array_length(_elements); i++)
	{
		if (layer_get_element_type(_elements[i]) == layerelementtype_instance){
			var _element = _elements[i];
			var _inst = layer_instance_get_instance(_element);
			_inst_elements[i] = _inst;
		}
	}
	return _inst_elements;
}

//Меняет кликабельность объектов из массива
_objs_isClickable_change = function (_arr, _bool){
	for(var i=0;i<array_length(_arr);i++){
		var _inst = _arr[i];
		if(instance_exists(_inst)){
			_inst.isClickable=_bool;
		}
	}
}
//Создание кнопки назад
_create_button_zoom_out = function () {
	var button = instance_create_depth(
	camera_get_view_x(view_camera[1])+
	camera_get_view_width(view_camera[1])/2,
	camera_get_view_y(view_camera[1])+
	camera_get_view_height(view_camera[1]),
	-9999,
	obj_zoom_out_button);
	with(button){zoom_in_instance = other.id;}
}
//Если будет нажата кнопка zoom out будет вызвана эта функция
_isClickedOnZoomOut = function () {
	_objs_isClickable_change(_get_insts_from_layer(layer_of_objects_to_zoom),false);
	isClickable = true;
}