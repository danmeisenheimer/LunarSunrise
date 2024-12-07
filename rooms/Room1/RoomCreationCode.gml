//var toggle_fan_instance = instance_find(toggleFan, 0); // Find the first instance of obj_toggle in the room

//if (toggle_fan_instance != noone) {
//    // Modify the parameters of the existing toggle instance
//    toggle_fan_instance.vState = true;  // Set the toggle to be ON
//    toggle_fan_instance.callback = scr_my_toggle_callback;  // Set the callback function
//}


// Room Creation Code
global.dayOfMonth = 0;

// This is where I can define all the toggle buttons.
global.default_colour = c_white;
global.battery_percent = 0.25;

global.toggles = [
	{
		instance_name: "lights",
		label: "Lights(20 KWH)",
		state: true, // Need a way to store/retrieve these values?)
		energyUsage: 20,
	},
	{
		instance_name: "computer",
		label: "PC(20 KWH)",
		state: true, // Need a way to store/retrieve these values?)		
		energyUsage: 20,
	},
	{
		instance_name: "oven",
		label: "Oven(40 KWH)",
		state: true, // Need a way to store/retrieve these values?)		
		energyUsage: 40,
	},
	{
		instance_name: "Thermostadt",
		label: "Thermostadt(100 KWH)",
		state: true, // Need a way to store/retrieve these values?)		
		energyUsage: 100,
	},
	{
		instance_name: "LifeSupport",
		label: "Life Support(100 KWH)",
		state: true, // Need a way to store/retrieve these values?)
		energyUsage: 100,
	},
];

var verticalOffsetForFirstToggle = 32;
var verticalOffsetForToggles = 75;

for (i = 0; i < array_length(global.toggles); ++i) {
	var yPosition = verticalOffsetForFirstToggle + i * verticalOffsetForToggles;
	var instance = instance_create_layer(32, yPosition, "Instances", o_toggle_button);
	instance.callback = scr_toggle_callback;
	instance.instance_name = global.toggles[i].instance_name;
	instance.label = global.toggles[i].label;
	instance.vState = global.toggles[i].state;
}


var pages = [
	{
		instance_name: "powerIn",
		label: "Power Input",
	},
	{
		instance_name: "powerUsage",
		label: "Power Usage",		
	},
];

global.selected_page = 0

var horizontalalOffsetForFirstTab = 316;
var horizontalOffsetForTabs = 256;

for (i = 0; i < array_length(pages); ++i) {
	var xPosition = horizontalalOffsetForFirstTab + i * horizontalOffsetForTabs;
	var instance = instance_create_layer(xPosition, 16, "Instances", o_tab_button);
	//instance.callback = scr_toggle_callback;
	instance.instance_name = pages[i].instance_name;
	instance.label = pages[i].label;
	instance.vPageIndex = i;
	instance.vX = xPosition;
	instance.vY = 16;
	instance.vWidth = 240;
	instance.vHeight = 48;
};
