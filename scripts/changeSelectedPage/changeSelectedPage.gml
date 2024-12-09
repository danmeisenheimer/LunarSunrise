// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_selected_page(_page_number){
	//show_debug_message(string_concat("bob is: ",bob))
    global.selected_page = _page_number;
	
	
        instance_input_panel_id = instance_find(o_right_panel_power_input, 0); 
        instance_usage_panel_id = instance_find(o_right_panel_power_usage, 0); 
		
		if  (_page_number == 0) {
			instance_input_panel_id.visible = true;
			instance_usage_panel_id.visible = false;
		}
		else {
			instance_input_panel_id.visible = false;
			instance_usage_panel_id.visible = true;
		}
}