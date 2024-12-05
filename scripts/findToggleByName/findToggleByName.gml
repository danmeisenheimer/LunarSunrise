
// Function to find the toggle instance by its custom name
function scr_find_toggle_by_name(name) {
    var instanceID;
    var i = 0;
    
    // Loop through all instances of obj_toggle
    while (true) {
        instanceID = instance_find(oToggleButton, i);  // Get the i-th instance of obj_toggle
        
        // If no more instances are found, break the loop
        if (instanceID == noone) {
            break;
        }
		
        show_debug_message("Checking instance: " + string(instanceID) + " with name: " + string(instanceID.instance_name));

        // Check if this instance has the desired custom instance_name
        if (instanceID.instance_name == name) {
            return instanceID;  // Return the instance if it's a match
        }
        
        // Move to the next instance
        i++;
    }
    
    // Return noone if the instance with the matching name wasn't found
    return noone;
}