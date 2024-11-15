// Changing the position values of the player

move_spd = 1;

if global.control_device != "gamepad"
{
	
	xspd = ((global.right_key - global.left_key) * (move_spd + global.sprint_key / 2)) * global.can_move;
	yspd = ((global.down_key - global.up_key) * (move_spd + global.sprint_key / 2)) * global.can_move;
	
}

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
if place_meeting(x + xspd, y, obj_wall) == true
	{
		xspd = 0;
	}
	
if place_meeting(x, y + yspd, obj_wall) == true
	{
		yspd = 0;
	}

if place_meeting(x + xspd, y, obj_warp_block) == true
	{
		xspd = 0;
	}
	
if place_meeting(x, y + yspd, obj_warp_block) == true
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
