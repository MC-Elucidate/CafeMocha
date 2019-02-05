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
equipmentInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_kettle, false, true);
if(equipmentInInteractionRange != noone)
{
	equipmentTypeInInteractionRange = EquipmentType.Kettle;
	return;
}
equipmentInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_grinder, false, true);
if(equipmentInInteractionRange != noone)
{
	equipmentTypeInInteractionRange = EquipmentType.Grinder;
	return;
}
equipmentInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_cup_dispenser, false, true);
if(equipmentInInteractionRange != noone)
{
	equipmentTypeInInteractionRange = EquipmentType.CupDispenser;
	return;
}
equipmentInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_milk_steamer, false, true);
if(equipmentInInteractionRange != noone)
{
	equipmentTypeInInteractionRange = EquipmentType.MilkSteamer;
	return;
}
equipmentTypeInInteractionRange = -1;
#endregion