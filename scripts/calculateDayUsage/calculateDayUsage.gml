// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_day_usage() {
	var _base_energy_usage = 1200;
	var _day_usage = _base_energy_usage;

	for (i = 0; i < array_length(global.toggles); ++i) {
		var _instance = scr_find_toggle_by_name(global.toggles[i].instance_name);
	
		if (_instance.vState == true) {
			_day_usage = _day_usage + global.toggles[i].energyUsage;
		}
	}
	
	// day_of_month is zero-based
	global.daily_energy_usage[global.day_of_month] = _day_usage;
	
	// Lower the battery level by whatever you used at the end of the day.
	global.battery_level = global.battery_level - _day_usage;
	
	// Add the amount of power produced by the solar panels on sun days only
	if (global.day_of_month < 14) {
		global.battery_level = global.battery_level + global.battery_input_for_sun_days;
	}
}