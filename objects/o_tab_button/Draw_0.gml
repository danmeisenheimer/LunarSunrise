/// @description Insert description here
// You can write your code in this editor

draw_set_font(fontArial);

if (vPageIndex == global.selected_page) {
	draw_set_color(c_white);
}
else {
	draw_set_color(c_grey);
}

draw_roundrect_ext(vX, vY, vX + vWidth, vY + vHeight, 8, 8, true);

//draw_set_halign(100);
//draw_set_valign(100);
var stringHeight = string_height(label);
draw_text(self.x + 16, self.y + self.sprite_height/2 - stringHeight/2, label);

//if(vPressed == true)
//{
//	sprite_index = Toggle_On_Pressed;
//		image_index = 0;
//}

//else
//{
//	if(vHover == true)
//	{
//		sprite_index = Toggle_On_Hover;
//		//show_debug_message("showing on hover");
//		image_index = 0;
//	}
	
//			else
//	{
//		sprite_index = Toggle_On_Default;
//		//show_debug_message("showing default");
//		image_index = 0;
//	}
//}
