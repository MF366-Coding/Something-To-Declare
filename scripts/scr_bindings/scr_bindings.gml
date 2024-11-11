// some ppl prefer WASD instead of the arrow keys so both will be available for use
	// I personally prefer arrow keys but hey, it's just an opinion: A MF366 OPINION!!! :DDDDD
	global.right_key = keyboard_check(vk_right) or keyboard_check(ord("D"));
	global.left_key = keyboard_check(vk_left) or keyboard_check(ord("A"));
	global.up_key = keyboard_check(vk_up) or keyboard_check(ord("W"));
	global.down_key = keyboard_check(vk_down) or keyboard_check(ord("S"));

	global.up_option_key = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
	global.down_option_key = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));

	global.inter_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_return);
	global.tab_key = keyboard_check_pressed(vk_tab);
	global.cursor_key = keyboard_check_pressed(vk_control);
	global.escape_key = keyboard_check_pressed(vk_escape);

global.inter_keystrokes = 0;
global.can_move = true;
global.saw_tutorial = false;