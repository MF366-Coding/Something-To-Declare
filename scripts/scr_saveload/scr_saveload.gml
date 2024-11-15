/// @desc Saves and loads the game automatically :D

// Saving
function SaveGame(slot){
	
	file = file_bin_open($"savefile{string(slot)}", 2); // reading and writing perms
	file_bin_seek(file, 0); // go to the start if you're not already there
	
	// SYNTAX:
	// file_bin_rewrite(file); // yeets all the data into a motherfucking blackhole. let that sink in for a moment
	// file_bin_position(file); // get the current position
	// file_bin_seek(file, 0); // where 0 is the byte
	// singlebyte = file_bin_read_byte(file); // where singlebyte is the variable to which the byte will be assigned
	// file_bin_write_byte(file, 1); // where 1 is the data to write
	
	file_bin_close(file);

}

// Loading
function LoadGame(){

	file = file_bin_open($"savefile{string(slot)}", 1); // reading perms only to avoid messy stuff
	file_bin_seek(file, 0); // go to the start if you're not already there
	
	// SYNTAX:
	// file_bin_rewrite(file); // yeets all the data into a motherfucking blackhole. let that sink in for a moment
	// file_bin_position(file); // get the current position
	// file_bin_seek(file, 0); // where 0 is the byte
	// singlebyte = file_bin_read_byte(file); // where singlebyte is the variable to which the byte will be assigned
	// file_bin_write_byte(file, 1); // where 1 is the data to write
	
	file_bin_close(file);

}

// Reset / new game
function NewGame(){
	
	file = file_bin_open($"savefile{string(slot)}", 2); // reading and writing perms
	file_bin_rewrite(file); // we're resetting the savefile
	file_bin_seek(file, 0); // go to the start if you're not already there
	
	// SYNTAX:
	// file_bin_rewrite(file); // yeets all the data into a motherfucking blackhole. let that sink in for a moment
	// file_bin_position(file); // get the current position
	// file_bin_seek(file, 0); // where 0 is the byte
	// singlebyte = file_bin_read_byte(file); // where singlebyte is the variable to which the byte will be assigned
	// file_bin_write_byte(file, 1); // where 1 is the data to write
	
	file_bin_close(file);

}
