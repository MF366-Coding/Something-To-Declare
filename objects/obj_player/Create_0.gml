// Settings X and Y positions
xspd = 0; yspd = 0;

// Setting the movement speed
move_spd = 1;

// Regarding sprite animations...
sprite[DOWN] = spr_player_down;
sprite[UP] = spr_player_up;
sprite[LEFT] = spr_player_left;
sprite[RIGHT] = spr_player_right;

// Idle sprites
sprite[IDLE_DOWN] = spr_player_down_idle;
sprite[IDLE_UP] = spr_player_up_idle;
sprite[IDLE_LEFT] = spr_player_left_idle;
sprite[IDLE_RIGHT] = spr_player_right_idle;

face = IDLE_DOWN;

global.can_move = true;
