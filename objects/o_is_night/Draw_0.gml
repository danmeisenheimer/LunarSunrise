/// @description Insert description here
// You can write your code in this editor
if (global.day_of_month < 14){
	draw_text(self.bbox_left, self.bbox_bottom, string_concat("Currently: Day (producing power)"));
}
else{
	draw_text(self.bbox_left, self.bbox_bottom, string_concat("Currently: Night (not producing power)"));
}