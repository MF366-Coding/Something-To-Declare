// Get the input
// Type out the text
text_progress = min(text_progress + text_spd, text_len);


// Checking for input delay
if input_delay > 0
{
	
	input_delay--;
	exit;
	
}


// Are we done typing?
// Let's see...

if text_progress == text_len {
	
	if option_count > 0
	{
		
		// In case there are options
		var press_up = global.up_option_key;
		var press_down = global.down_option_key;
		
		
		// Cycle through the options I guess
		var change = press_down - press_up;
		
		if change != 0
		{
			
			current_option += change;
			
			
			// Wrap to first and last option
			if current_option < 0
			{
				
				current_option = option_count - 1;
				
			}
			
			else if current_option >= option_count
			{
				
				current_option = 0;
				
			}
			
		}
		
		// Selection
		if global.inter_key
		{
			
			var option = options[current_option];
			options = [];
			option_count = 0;
			
			option.Act(id);
			
		}
		
	}
	
	else if global.inter_key
	{
		next();
		
	}
	
}

else if global.inter_key {
	
	// We aren't done typing
	// SOOOOO... let's type the whole thing!
	text_progress = text_len;
	
}



