//var toggle_fan_instance = instance_find(toggleFan, 0); // Find the first instance of obj_toggle in the room

//if (toggle_fan_instance != noone) {
//    // Modify the parameters of the existing toggle instance
//    toggle_fan_instance.vState = true;  // Set the toggle to be ON
//    toggle_fan_instance.callback = scr_my_toggle_callback;  // Set the callback function
//}


// Room Creation Code
// This is where I can define all the toggle buttons.
var toggles = [
	{
		instance_name: "fanSwitch",
		label: "Ceiling Fan",
		state: true, // Need a way to store/retrieve these values?)
	},
	{
		instance_name: "labLightsSwitch",
		label: "Lab Lights",
		state: true, // Need a way to store/retrieve these values?)
	},
];

var verticalOffsetForFirstToggle = 100;
var verticalOffsetForToggles = 75;

for (i = 0; i < array_length(toggles); ++i) {
	var yPosition = verticalOffsetForFirstToggle + i * verticalOffsetForToggles;
	var instance = instance_create_layer(50, yPosition, "Instances", oToggleButton);
	instance.callback = scr_my_fan_toggle_callback;
	instance.instance_name = toggles[i].instance_name;
	instance.label = toggles[i].label;
	instance.vState = toggles[i].state;
}
