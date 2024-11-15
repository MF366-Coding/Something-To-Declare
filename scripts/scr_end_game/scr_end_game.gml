/// @desc deals with the Quit Game option
no_textbox_rooms = [rm_menu, rm_intermission];

function CallGameEnd(_var_code = 0){	
	try
	{
		
		if array_get_index(no_textbox_rooms, room)
		{
			
			in = true;
			
		}
		
	}
	
	catch(exception)
	{
	
		in = false;
		show_debug_message(exception.message);
	    show_debug_message(exception.longMessage);
		show_debug_message(exception.script);
		show_debug_message(exception.stacktrace);
		delete exception;
	
	}
	
	if in
	{
		
		game_end(_var_code);
		
	}
	
	else
	{
		
		InitiateDialog("Quit the Game", true);
		
	}
	
}