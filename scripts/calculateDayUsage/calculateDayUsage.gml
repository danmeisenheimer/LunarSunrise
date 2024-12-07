// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_day_usage() {
	
	var dayUsage = 0;

	for (i = 0; i < array_length(global.toggles); ++i) {
		var instance = scr_find_toggle_by_name(global.toggles[i].instance_name);
	
		if (instance.vState == true) {
			dayUsage = dayUsage + global.toggles[i].energyUsage;
		}
	}
	global.dayUsages[global.dayOfMonth] = dayUsage;
	global.dayOfMonth++;
	
	show_debug_message(string_concat("dayUsage: ", dayUsage, " dayOfMonth: ", global.dayOfMonth));
}