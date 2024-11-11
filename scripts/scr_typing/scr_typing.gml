// The function you need to call!
// The HOLY function!!!
/// @param topic - Topic the dialogue box should use
function InitiateDialog(topic, _prioritize = false){
	
	if instance_exists(obj_textbox)
	{
		
		if _prioritize
		{
			
			instance_destroy(obj_textbox);
			
		}
		
		else
		{
			
			return;
			
		}
		
	}
	
	
	var _inst = instance_create_layer(0, 0, "Instances", obj_textbox);
	_inst.depth = -9998;
	_inst.set_topic(topic);
	
}


// This function will work as a better draw_text_ext
function TypeDialogueText(x, y, text, progress, width){
	
	// This 2 variables will change over time
	// Basically, the position of... our "brush"
	var draw_x = 0;
	var draw_y = 0;
	
	
	// This loop iterates through the letters
	for (var i = 1; i <= progress; i++)
	{
		
		var _char = string_char_at(text, i);
		var _prev_char = string_char_at(text, i - 1);
		var _next_char = string_char_at(text, i + 1);
		
		
		// Handling normal line breaks and stuff ('\n', like good ol' Python)
		if _char == "\n"
		{
		
			draw_x = 0;
			draw_y = string_height("A");
		
		}
		
		else if _char == "!" and (_next_char == "y" or _next_char == "b" or _next_char == "r" or _next_char == "c" or _next_char == "o" or _next_char == "g" or _next_char == "w")
		{
			
			var cur_color = draw_get_color();
			
		}
		
		else if _char == "y" and _prev_char == "!"
		{
			
			draw_set_color(c_yellow);
			
		}
		
		else if _char == "b" and _prev_char == "!"
		{
			
			draw_set_color(c_aqua);
			
		}
		
		else if _char == "r" and _prev_char == "!"
		{
			
			draw_set_color(c_red);
			
		}
		
		else if _char == "c" and _prev_char == "!"
		{
			
			draw_set_color(c_gray);
			
		}
		
		else if _char == "o" and _prev_char == "!"
		{
			
			draw_set_color(c_olive);
			
		}
		
		else if _char == "g" and _prev_char == "!"
		{
			
			draw_set_color(c_green);
			
		}
		
		else if _char == "w" and _prev_char == "!"
		{
			
			draw_set_color(c_white);
			
		}
		
		// If we're starting a new word
		// Lien break time!
		else if _char = " "
		{
			
			draw_x += string_width(_char);
			
			var word_width = 0;
			var cur_color = draw_get_color();
			
			for (var ii = i + 1; ii <= string_length(text); ii++)
			{
				
				var word_char = string_char_at(text, ii);
				
				
				// In case we have reached THE END (of the word lolz)
				// In that case, we stop checking for more letters in the word (makes sense, duuuh???)
				if word_char == "\n" or word_char == " "
				{
					
					break;
					
				}
				
				
				// If the current word extends past the width boundary
				// You guessed it: move it to the next line brotha!!
				word_width += string_width(word_char);
				
				if draw_x + word_width > width
				{
					
					draw_x = 0;
					draw_y += string_height("A");
					break;
					
				}
				
			}
			
		}
		
		
		// Drawing the letter
		else
		{
			
			draw_text(x + draw_x, y + draw_y, _char);
			draw_x += string_width(_char);
			
		}
	
	}
	
}