// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_day_happiness_usage() {
	var _base_happiness_usage = 33 - global.daily_crew_happiness;
	var _day_usage = _base_happiness_usage;

	for (i = 0; i < array_length(global.toggles); ++i) {
		var _instance = scr_find_toggle_by_name(global.toggles[i].instance_name);
	
		if (_instance.vState == true) {
			_day_usage = _day_usage - global.toggles[i].happinessEffect;
		}
	}
	
	// day_of_month is zero-based
	global.daily_happiness_usage[global.day_of_month] = _day_usage;
	
	// Lower the battery level by whatever you used at the end of the day.
	global.crew_happiness = global.crew_happiness - _day_usage;
	
	// Cap happiness at 40
	if (global.crew_happiness > 40){
		global.crew_happiness = 40
	}
}