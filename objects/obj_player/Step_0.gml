// Changing the position values of the player

if global.super_duper_speed_status { move_spd = 10; }
else { move_spd = 1; }

if global.control_device != "gamepad"
{
	
	xspd = ((global.right_key - global.left_key) * move_spd) * global.can_move;
	yspd = ((global.down_key - global.up_key) * move_spd) * global.can_move;
	
}


/*
else
{
	
	// gotta check the Manual real quick
	// dont remember the function name
	var _cursor_x = window_mouse_get_x();
	var _cursor_y = window_mouse_get_y();
	
	// By default, our xspd and yspd should remain 0 if the player is already at the right position
	xspd = 0;
	yspd = 0;
	
	
	// Cursor X cases
	if _cursor_x > x // Mouse X is greater than Player X = move right
	{
		
		// Walk 1 step there
		xspd = move_spd * global.can_move;
		
	}
	
	else if _cursor_x < x // Mouse X is lower than Player X = move left
	{
		
		// Walk 1 step there
		xspd = -(move_spd * global.can_move);
		
	}
	
	
	// Cursor Y cases
	// However remember GMS2 swaps Y
	// that means that going down in GameMaker is actually increasing the Y value
	if _cursor_y > y // Mouse Y is greater than Player Y = move down
	{
		
		// Walk 1 step there
		yspd = move_spd * global.can_move;
		
	}
	
	else if _cursor_y < y // Mouse Y is lower than Player Y = move up
	{
		
		// Walk 1 step there
		yspd = -(move_spd * global.can_move);
		
	}
	
}
*/


// Setting the correct sprite
mask_index = sprite[IDLE_DOWN];


if yspd == 0
{
	if xspd > 0 {face = RIGHT}
	if xspd < 0 {face = LEFT}
}

if xspd > 0 and face == LEFT {face = RIGHT}
if xspd < 0 and face == RIGHT {face = LEFT}

if xspd == 0
{
	if yspd > 0 {face = DOWN}
	if yspd < 0 {face = UP}
}

if yspd > 0 and face == UP {face = DOWN}
if yspd < 0 and face == DOWN {face = UP}

sprite_index = sprite[face];
mask_index = sprite[face];


// Handling collisions
if place_meeting(x + xspd, y, obj_wall) == true and global.wall_clip_status != true
	{
		xspd = 0;
	}
	
if place_meeting(x, y + yspd, obj_wall) == true and global.wall_clip_status != true
	{
		yspd = 0;
	}

if place_meeting(x + xspd, y, obj_warp_block) == true and global.wall_clip_status != true
	{
		xspd = 0;
	}
	
if place_meeting(x, y + yspd, obj_warp_block) == true and global.wall_clip_status != true
	{ 
		yspd = 0;
	}


// Actually moving the player
x += xspd;
y += yspd;


// Animate
if xspd == 0 and yspd == 0
{
	if face == RIGHT {face = IDLE_RIGHT}
	if face == LEFT {face = IDLE_LEFT}
	if face == UP {face = IDLE_UP}
	if face == DOWN {face = IDLE_DOWN}
}


// Depth
depth = -bbox_bottom;
