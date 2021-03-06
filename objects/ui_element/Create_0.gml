/// @description Properties
#region Enums
enum Anchor
{
	top_left,top_center,top_right,
	middle_left,middle_centre,middle_right,
	bottom_left,bottom_center,bottom_right
}

enum Alignment
{
	top=0,middle=1,bottom=2,
	left=0,center=1,right=2
}

enum Aspects
{
	_16x9,
	_21x9,
	_1x1,
	_4x3,
	_9x16	
}
#endregion

#macro mouse_gui_x device_mouse_x_to_gui(0)
#macro mouse_gui_y device_mouse_y_to_gui(0)

image_speed=0;

#region Positioning and State Animation 
enum VisualState
{
	active,
	deactivating,
	inactive,
	activating
}
state = VisualState.active;
script = noone;
isClickable = true;
length=15;
timer=length;
activate_ease=TwerpType.out_back;
deactivate_ease=TwerpType.in_back;
active_pos=[0,0];
inactive_offset=[0,0];
#endregion

#region Text
displayText = "";
textFont = fnt_default_button;
textColour = make_color_rgb(160, 65, 13);
textAlignment = Alignment.center;
#endregion

//Update Position
event_user(0);