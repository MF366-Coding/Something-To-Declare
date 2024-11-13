function custom_warp(_custom_room, _custom_x, _custom_y) {

	if not instance_exists(obj_warp_effect)
	{
		var inst = instance_create_depth(0, 0, -9999, obj_warp_effect);
		inst.target_x = _custom_x;
		inst.target_y = _custom_y;
		inst.target_rm = _custom_room;
		
		return true;
	}
	
	return false;
	
}
