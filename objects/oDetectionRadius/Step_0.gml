/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 19A29486
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
var l19A29486_0 = place_empty(x + 0, y + 0);
if (!l19A29486_0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1B61940E
	/// @DnDParent : 19A29486
	/// @DnDArgument : "code" "oEnemy.detect = true;"
	oEnemy.detect = true;
}