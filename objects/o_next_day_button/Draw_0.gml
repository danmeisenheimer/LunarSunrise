/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);

draw_set_font(fontArial);

draw_roundrect_ext(
	self.bbox_left, 
	self.bbox_top, 
	self.bbox_left + self.sprite_width, 
	self.bbox_top + self.sprite_height, 
	8, 
	8, 
	true);

var label = "Next Day";
var stringHeight = string_height(label);
var stringWidth = string_width(label);
draw_text(
	self.x + self.sprite_width/2 - stringWidth/2, 
	self.y + self.sprite_height/2 - stringHeight/2,
	label
	);

