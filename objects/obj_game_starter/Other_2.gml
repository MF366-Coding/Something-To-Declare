/// @desc Defining Game Start behavior

// 1. Set the correct cursor sprite
cursor_sprite = cr_none;

// 2. Generate a new seed so the random values are different everytime
randomise();
// randomise sets a new seed so the random statements are different every time you play the game

// 3. Set a caption/title for the window
// (just like in Python tkinter's Tk.title() method)
window_set_caption("LonelySurvival");

// 4. Initialise general use variables
//initialise_variables();

// just found out how I could implement resolutions but too busy (lazy) for it rn
