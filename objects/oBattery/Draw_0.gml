/// @description Insert description here
// You can write your code in this editor

draw_self();

    var _battery_percent = global.battery_level / global.battery_capacity;
	var _max_width_px = 244;

if (global.battery_level > 0) {
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
	if (_battery_percent <= 0.15) {
		draw_set_color(c_red);
	}
	else if (_battery_percent <= 0.3) {
		draw_set_color(c_yellow);
	}
	else {
		draw_set_color(c_green);
	}
	draw_rectangle(_left, _top, _right, _bottom, false);
	draw_set_color(global.default_colour);
}

if (_battery_percent < 0){
	global.game_over = 1
}