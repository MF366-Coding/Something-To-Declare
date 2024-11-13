// When the player touchs a Warp Block, he gets teleported to the new room
// (while playing a cool and badass transition effect)

if place_meeting(x, y, obj_player) and not instance_exists(obj_warp_effect) and global.can_move == true
{
	var inst = instance_create_depth(0, 0, -9999, obj_warp_effect);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
}

