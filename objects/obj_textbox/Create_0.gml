/*

THIS WAS POSSIBLE THANKS TO MIMPY ON YOUTUBE
CHECK THEM OUT, IT'S A GREAT AND STRAIGHT-FORWARD TEXTBOX SYSTEM TUTORIAL!!!
<3 Love, MF366 :D

*/

viewport = room_get_viewport(rm_menu, 0);
vp_width = viewport[3];
vp_height = viewport[4];


// Customizable parameters
	// Input Button	
	max_input_delay = 5; // How many frames should the input ignore?!
	input_delay = max_input_delay;


	// Position
	margin = 32;
	padding = 8;
	width = vp_width - margin * 2;
	height = 144;
	
	x = (vp_width - width) / 2;
	y = vp_height - height - margin;
	
	
	// Text
	text_font = fnt_dialogue;
	text_color = c_white;
	text_spd = 0.6;
	text_x = padding;
	text_y = padding * 3;
	text_width = width - padding * 2;
	
	
	// Portrait Variables
	portrait_x = 0;
	portrait_y = 0;
	
	
	// Speaker
	speaker_x = padding;
	speaker_y = 0;
	speaker_font = fnt_dialogue;
	speaker_color = c_white;
	
	
	// Options
	option_x = padding;
	option_y = padding * -6;
	option_spacing = 50;
	option_selection_indent = 24;
	option_width = 500;
	option_height = 40;
	option_text_x = 10;
	option_text_color = c_white;
	
	
// Private parameters
	// No editing allowed down here!

	actions = [];
	current_action = 0;
	
	text = "";
	text_progress = 0;
	text_len = 0;
	
	portrait_spr = -1;
	portrait_width = 140;
	portrait_height = 140;
	portrait_side = PORTRAIT_SIDE._LEFT;
	
	enum PORTRAIT_SIDE {
		_LEFT,
		_RIGHT
	}
	
	speaker_name = "";
	speaker_width = 120;
	speaker_height = 42;
	
	options = [];
	current_option = 0;
	option_count = 0;
	

// Methods
	// Usually never called manually
	
	// Start a conversation
	set_topic = function(topic, _func = undefined){
		
		if _func != undefined
		{
			
			_func();
			
		}
		
		actions = global.topics[$ topic];
		current_action = -1;
		
		next();
		
	}

	
	// Move to the next action
	// Can also close the texstbox if out of actions
	next = function(){
	
		current_action++;
		
		if current_action >= array_length(actions)
		{
			
			instance_destroy();
			global.inter_keystrokes = 2;
			global.can_move = true;
			
		}
		
		else
		{
			
			actions[current_action].Act(id);
			
		}
		
	}
	
	
	// Set the text that should be typed
	set_text = function(new_text) {
		
		text = new_text;
		text_len = string_length(new_text);
		text_progress = 0;
		
	}
