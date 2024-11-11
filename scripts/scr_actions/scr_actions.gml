/// @desc Setting up functions to be able to use the actions in our textbox


// Setting up a macro so I can create textboxes fast and with ease
#macro TEXT new TextAction
#macro SPEAKER new SpeakerAction
#macro CHOICE new ChoiceAction
#macro OPTION new OptionAction
#macro GOTO new GotoAction


// Action template, serves to make other actions
function DialogueAction() constructor {
	
	Act = function() { };
	
}


// Defining new text to type out (hell yea my man!)
function TextAction(_text): DialogueAction() constructor {
	
	text = _text;
	
	Act = function(textbox) {
		
		textbox.set_text(text);
		
	}
	
}


//  Setting a speaker, its portrait parameters (optional)
function SpeakerAction(_name, _spr = undefined, _side = undefined): DialogueAction() constructor {
	
	name = _name;
	sprite = _spr;
	side = _side;
	
	Act = function(textbox)
	{
		
		textbox.speaker_name = name;
		
		if (!is_undefined(sprite))
			textbox.portrait_spr = sprite;
			
		if (!is_undefined(side))
			textbox.portrait_side = side;
			
		textbox.next();
		
	}
	
}


function ResetAction(_name, _spr = true, _side = true) constructor {
	name = _name
	sprite = _spr
	side = _side
	
	Act = function(textbox)
	{	
		if (_name)
			textbox.speaker_name = undefined;
		
		if (_spr)
			textbox.portrait_spr = undefined;
		
		if (_side)
			textbox.portrait_side = undefined;
		
		textbox.next()
	}
}

// Defining a branch in the dialogue
function ChoiceAction(_text): DialogueAction() constructor {
	
	text = _text;
	
	// Fill the array with the arguments
	options = [];
	
	for (var i = 1; i < argument_count; i++)
	{
		
		array_push(options, argument[i]);
		
		Act = function(textbox) {
			
			textbox.set_text(text);
			textbox.options = options;
			textbox.option_count = array_length(options);
			textbox.current_option = 0;
			
		}
		
	}
		
}


// Placing options using the above function
function OptionAction(_text, _topic, _func = undefined): DialogueAction() constructor {
	
	text = _text;
	topic = _topic;
	func = _func;
	
	Act = function(textbox) {
		
		textbox.set_topic(topic, func);
	
	}
	
}


// Going to a specific topic
function GotoAction(_topic, _func = undefined): DialogueAction() constructor {
	
	topic = _topic;
	func = _func
	
	Act = function(textbox) {
		
		textbox.set_topic(topic, func);
		
	}
	
}
