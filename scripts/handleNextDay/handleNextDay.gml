// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_next_day(){
	calculate_day_usage();
	calculate_day_happiness_usage();
	global.day_of_month++;
}