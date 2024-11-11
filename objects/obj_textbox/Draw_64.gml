/// @desc Draw the textbox and its text


// Stretched textbox
draw_sprite_stretched(sprite_index, 0, x, y, width, height);


// Defining temporary variables
var draw_text_x = x;
var draw_text_y = y;
var draw_text_width = text_width;


var finished = text_progress == text_len;


// Portraits are optional
if sprite_exists(portrait_spr)
{
	
	// Shrink the text width by the width of the portrait bro
	draw_text_width -= portrait_width + portrait_x + padding;
	
	var draw_portrait_x = x + portrait_x;
	var draw_portrait_y =  y + portrait_y;
	var draw_portrait_xscale = 11;
	
	
	// Depending on which side the portrait is on, the behavior will be different
	if portrait_side == PORTRAIT_SIDE._LEFT
	{
		
		draw_text_x += portrait_width + portrait_x + padding;
		
	}
	
	else
	{
		
		// Shifting to the right requires more code...
		
		draw_portrait_x = x + width - portrait_width - portrait_x;
		draw_portrait_xscale = -11;
		
	}
	
	
	// Drawing the actual portrait background
	draw_sprite(spr_portrait, 0, draw_portrait_x, draw_portrait_y);
	
	
	// THIS IS PURELY FOR COMPATIBILITY!
	// This isn't actually used (sprite animation)
	var subimg = 0;
	
	if not finished
	{
		
		subimg = (text_progress / text_spd) * (sprite_get_speed(portrait_spr) / game_get_speed(gamespeed_fps));
		
	}
	
	
	// Finally, let's draw our sprite! Yay!
	draw_sprite_ext(portrait_spr, subimg, draw_portrait_x + portrait_width / (2 * 11) + (13 * 2), draw_portrait_y + portrait_height / (2 * 11) + (18 * 2), draw_portrait_xscale, abs(draw_portrait_xscale), 0, c_white, 1);
	
}


// About the speaker...
if speaker_name != ""
{
	
	// Expanding our sprite
	var name_w = max(string_width(speaker_name), speaker_width);
	
	draw_sprite_stretched(spr_square_text, 0, x + speaker_x, y + speaker_y - speaker_height / 2, name_w, speaker_height);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(speaker_font);
	draw_set_color(speaker_color);
	draw_text(x + speaker_x + name_w / 2, y + speaker_y, speaker_name);
	
}


// The actual text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(text_font);
draw_set_color(text_color);
TypeDialogueText(draw_text_x + text_x, draw_text_y + text_y, text, text_progress, draw_text_width);

if finished
{

	draw_sprite_ext(spr_butts, 0, 240 * 3 + 42, 176 * 3 + 38, 0.78125 * 2, 0.78125 * 2, 0, c_white, 1);

}

// Drawing OPTIONs, which is OPTIONal :D
if finished and option_count > 0
{
	
	draw_set_valign(fa_middle);
	draw_set_color(option_text_color);
	
	for (var i = 0; i < option_count; i++)
	{
		
		var opt_x = x + option_x;
		var opt_y = y + option_y - (option_count - i - 1) * option_spacing;
		
		
		// The selected option is indented
		if i == current_option
		{
			
			draw_sprite_ext(spr_option_arrow, 0, opt_x, opt_y - 13, 2, 2, 0, c_white, 1);
			opt_x += option_selection_indent + 15;
			
		}
		
		
		// Actually drawing
		draw_sprite_stretched(spr_square_text, 0, opt_x, opt_y - option_height / 2, option_width, option_height);
		draw_text(opt_x + option_text_x, opt_y, options[i].text);
		
	}
	
}
