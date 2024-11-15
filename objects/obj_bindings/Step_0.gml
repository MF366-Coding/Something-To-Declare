/// @desc look for bindings lol

// some ppl prefer WASD instead of the arrow keys so both will be available for use
// I personally prefer arrow keys but hey, it's just an opinion: A MF366 OPINION!!! :DDDDD
global.right_key = keyboard_check(vk_right) or keyboard_check(ord("D"));
global.left_key = keyboard_check(vk_left) or keyboard_check(ord("A"));
global.up_key = keyboard_check(vk_up) or keyboard_check(ord("W"));
global.down_key = keyboard_check(vk_down) or keyboard_check(ord("S"));

global.sprint_key = keyboard_check(vk_shift);

global.up_option_key = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
global.down_option_key = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));

global.inter_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_return);
global.tab_key = keyboard_check_pressed(vk_tab);
global.escape_key = keyboard_check_pressed(vk_escape);

global.debug_key_1 = keyboard_check_pressed(vk_f2);
global.debug_key_2 = keyboard_check_pressed(vk_f3);
global.debug_key_3 = keyboard_check_pressed(vk_f4);
global.debug_key_4 = keyboard_check_pressed(vk_f6);
global.debug_key_5 = keyboard_check_pressed(vk_f7);
global.debug_key_6 = keyboard_check_pressed(vk_f8);
global.debug_key_7 = keyboard_check_pressed(vk_f9);


if global.inter_key and global.inter_keystrokes > 0
{
	
	global.inter_keystrokes--;
	
}
