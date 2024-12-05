// Callback function that will be called when the fan toggle is clicked
function scr_my_fan_toggle_callback(isOn) {
	var toggle_fan_instance = scr_find_toggle_by_name("fanSwitch");
	
    if (isOn) {
		toggle_fan_instance.vState = false;
    } else {
		toggle_fan_instance.vState = true;
    }
}