/// @function toggle_drink_station_display(objDrinkStation, show)
/// @description Shows or hides the drink station screen
/// @arg objDrinkStation the drink station object
/// @arg show boolean stating whether to show or hide the screen

var drinkStation = argument0;
var show = argument1;
if(show)
{
	drinkStation.isMenuOpen = true;
	instance_activate_object(ui_drink_station_button);
	instance_activate_object(ui_rhythm_marker);
	instance_deactivate_object(btn_stop_mixing);
}
else
{
	drinkStation.isMenuOpen = false;
	remove_all_selected_order_items();
	instance_deactivate_object(ui_drink_station_button);
	instance_deactivate_object(ui_rhythm_marker);
}