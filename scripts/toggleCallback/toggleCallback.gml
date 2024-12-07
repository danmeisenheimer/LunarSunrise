// Callback function that will be called when the fan toggle is clicked
function scr_toggle_callback(_instance_name, _is_on) {
	var _instance = scr_find_toggle_by_name(_instance_name);
	
    if (_is_on) {
		_instance.vState = false;
    } else {
		_instance.vState = true;
    }
}