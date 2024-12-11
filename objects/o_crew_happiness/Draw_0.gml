/// @description Insert description here
// You can write your code in this editor

var _battery_percent = global.crew_happiness / global.max_crew_happiness;
var _max_width_px = 250;

if (global.crew_happiness > 0) {
	// _level_margin determines how much background shows between the battery outline
	// and the green level rectangle.
	var _level_margin = 4;
	var _top = self.bbox_top + 10 + _level_margin;
	var _left = self.bbox_left + 10 + _level_margin;
	var _max_pixel_x = self.bbox_left + _max_width_px - _level_margin;
	var _bottom = self.bbox_top + 72 - _level_margin;
	var _full_width = _max_pixel_x - _left;
	
	var _width = _battery_percent * _full_width;
	var _right = _left + _width; 

	draw_set_color(c_green);
	draw_rectangle(_left, _top, _right, _bottom, false);
	draw_set_color(global.default_colour);
}

if (_battery_percent < 0){
	global.game_over = 1
}
	
draw_self();