/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35E0C43C
/// @DnDArgument : "var" "vState"
/// @DnDArgument : "value" "true"
if(vState == true){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 00FBF8C6
	/// @DnDParent : 35E0C43C
	/// @DnDArgument : "spriteind" "Toggle_On_Pressed"
	/// @DnDSaveInfo : "spriteind" "Toggle_On_Pressed"
	sprite_index = Toggle_On_Pressed;
	image_index = 0;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 79BF8216
else{	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 467B88E4
	/// @DnDParent : 79BF8216
	/// @DnDArgument : "spriteind" "Toggle_Off_Pressed"
	/// @DnDSaveInfo : "spriteind" "Toggle_Off_Pressed"
	sprite_index = Toggle_Off_Pressed;
	image_index = 0;}