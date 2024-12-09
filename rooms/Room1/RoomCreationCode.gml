//var toggle_fan_instance = instance_find(toggleFan, 0); // Find the first instance of obj_toggle in the room

//if (toggle_fan_instance != noone) {
//    // Modify the parameters of the existing toggle instance
//    toggle_fan_instance.vState = true;  // Set the toggle to be ON
//    toggle_fan_instance.callback = scr_my_toggle_callback;  // Set the callback function
//}


// Room Creation Code
global.day_of_month = 0;

// This is where I can define all the toggle buttons.
global.default_colour = c_white;

// Start the lunar cycle with 300kWh
global.battery_level = 300;

// Start with 20 crew happiness points
global.crew_happiness = 20;

// This is how many happiness points get added per day
global.daily_crew_happiness = 5;

var _kwh_per_solar_panel_per_day = 12;
var _number_of_solar_panels = 215;

// For half the moon cycle we gain battery power per day (i.e. for 14 days)
global.battery_input_for_sun_days = _kwh_per_solar_panel_per_day * _number_of_solar_panels;

//Battery can hold 25000 kwh of energy
global.battery_capacity = 25000;

// The crew can have a maximum of 40 happiness points
global.max_crew_happiness = 40;

// Track energy usage for each of the 28 days in the lunar cycle
global.daily_energy_usage = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

// Track crew happiness usage for each of  the 28 days of the lunar cycle
global.daily_happiness_usage = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

global.toggles = [
	{
		instance_name: "lights",
		label: "Lights(20 KWH)",
		state: true, // Need a way to store/retrieve these values?)
		energyUsage: 20,
		happinessEffect: 5,
	},
	{
		instance_name: "computer",
		label: "PC(20 KWH)",
		state: true, // Need a way to store/retrieve these values?)		
		energyUsage: 20,
		happinessEffect: 2,
	},
	{
		instance_name: "oven",
		label: "Oven(40 KWH)",
		state: true, // Need a way to store/retrieve these values?)		
		energyUsage: 40,
		happinessEffect: 1,
	},
	{
		instance_name: "Thermostadt",
		label: "Thermostadt(100 KWH)",
		state: true, // Need a way to store/retrieve these values?)		
		energyUsage: 100,
		happinessEffect: 5,
	},
	{
		instance_name: "LifeSupport",
		label: "Life Support(100 KWH)",
		state: true, // Need a way to store/retrieve these values?)
		energyUsage: 100,
		happinessEffect: 20,
	},
];

var verticalOffsetForFirstToggle = 32;
var verticalOffsetForToggles = 75;

for (i = 0; i < array_length(global.toggles); ++i) {
	var yPosition = verticalOffsetForFirstToggle + i * verticalOffsetForToggles;
	var instance = instance_create_layer(24, yPosition, "Instances", o_toggle_button);
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
	