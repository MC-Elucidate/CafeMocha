#region Direction
xRangeModifier = 0;
yRangeModifier = 0;

switch(obj_mocha.direction)
{
	case Direction.right: xRangeModifier = range; break;
	case Direction.up: yRangeModifier = -range; break;
	case Direction.left: xRangeModifier = -range; break;
	case Direction.down: yRangeModifier = range; break;
}
#endregion

#region Detection
interactableInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_kettle, false, true);
if(interactableInInteractionRange != noone)
{
	interactableTypeInInteractionRange = InteractableType.Kettle;
	return;
}
interactableInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_grinder, false, true);
if(interactableInInteractionRange != noone)
{
	interactableTypeInInteractionRange = InteractableType.Grinder;
	return;
}
interactableInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_cup_dispenser, false, true);
if(interactableInInteractionRange != noone)
{
	interactableTypeInInteractionRange = InteractableType.CupDispenser;
	return;
}
interactableInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_milk_steamer, false, true);
if(interactableInInteractionRange != noone)
{
	interactableTypeInInteractionRange = InteractableType.MilkSteamer;
	return;
}
interactableInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_counter, false, true);
if(interactableInInteractionRange != noone)
{
	interactableTypeInInteractionRange = InteractableType.Counter;
	return;
}
interactableTypeInInteractionRange = -1;
#endregion