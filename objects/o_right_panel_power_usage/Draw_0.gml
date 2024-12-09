/// @description Insert description here
// You can write your code in this editor

var _panel_left_edge = 316;
var _panel_right_edge = 1348;
var _panel_top_edge = 80;
var _panel_bottom_edge = 620;
var _bar_graph_margin = 20;
var _next_bar_x = 35.4;
var _bar_width = 30;

// Maximum pixel height for a bar, associated with about 500kWh usage
// Miraculously these are both 500
var _max_bar_height_px = 500;
var _max_kwh = 1480;

var _first_bar_x = _panel_left_edge + _bar_graph_margin;
var _bar_bottom = _panel_bottom_edge - _bar_graph_margin;

draw_roundrect_ext(_panel_left_edge, _panel_top_edge, _panel_right_edge, _panel_bottom_edge, 8, 8, true);
draw_set_color(c_green);

for (i = 0; i < array_length(global.daily_energy_usage); ++i) {
	var _day_usage = global.daily_energy_usage[i];
	var _bar_height = _day_usage / _max_kwh * _max_bar_height_px;
	
	if (_bar_height == 0) {
		// Always show something for the bars
		_bar_height = 1;
	}
	
	var _bar_start_x = _first_bar_x + _next_bar_x * i;
	var _bar_start_y = _bar_bottom - _bar_height;
	var _bar_end_x = _bar_start_x + _bar_width;
	draw_roundrect_ext(_bar_start_x, _bar_start_y, _bar_end_x, _bar_bottom, 4, 4, false);
}

draw_set_color(c_white);
