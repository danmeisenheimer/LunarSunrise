// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_next_day(){
	calculate_day_usage();
	calculate_day_happiness_usage();
	global.day_of_month++;
	if (global.day_of_month > 14){
		var background = layer_background_get_id(layer_get_id("Background"));
		layer_background_blend(background, #16085E)
	}
}