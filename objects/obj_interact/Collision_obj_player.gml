if global.inter_key and global.can_move == true and global.inter_keystrokes = 0
{
	
	switch inter_obj
	{
		
		default:
			global.can_move = true;
			break;
		
		case 1:
			show_message("TODO");
			break;
		
	}
		
}

