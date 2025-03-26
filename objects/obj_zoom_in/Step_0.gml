event_inherited();
//Создаётся массив элементов с нужного слоя
var _get_inst_from_layer = function(_inst_name){
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
var _objs_isClickable_change = function (_arr, _bool){
	for(var i=0;i<array_length(_arr);i++){
		var _inst = _arr[i];
		if(instance_exists(_inst)){
			_inst.isClickable=_bool;
		}else{isNeedToGetArrayOfInstances=true;}
	}
}
//Основной код
if(isNeedToGetArrayOfInstances){
	zoomed_objs = _get_inst_from_layer (zoomed_layer);
	isNeedToGetArrayOfInstances=false;
}

if(isClickable){
	if(isClickedOnObj){
		//Смена камеры
		view_set_camera(
			1,
			camera_create_view(
				x-zoom_size_x/2+zoom_x_correction,
				y-zoom_y_correction,
				zoom_size_x,
				zoom_size_y
			)
		);
		//Создание кнопки назад
		var button = instance_create_layer(
		camera_get_view_x(view_camera[1])+
		camera_get_view_width(view_camera[1])/2,
		camera_get_view_y(view_camera[1])+
		camera_get_view_height(view_camera[1]),
		"inst_button",
		obj_zoom_out_button);
		isClickable=false;
	}
	_objs_isClickable_change(zoomed_objs,false);
}else{
	_objs_isClickable_change(zoomed_objs,true);
}
