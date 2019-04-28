/// @function change_room(nextRoom, roomEnterSound)
/// @description Tells the game manager to change rooms
/// @arg nextRoom the room to move to

var nextRoom = argument0;
var roomEnterSound = argument1;

with(GameManager)
{
	targetRoom = nextRoom;
	roomEnteredSound = roomEnterSound;
	inTransition = true;
}