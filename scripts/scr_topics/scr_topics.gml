/// @desc Textbox topics :D
// Why am I adding :D to every single Goddamn sentence? :D

// Alright so... :D
// The things that have _func argument are.... :D
// < :D attack :D >
// Option and Goto :D

/*

   ██████  
██ ██   ██ 
   ██   ██ 
██ ██   ██ 
   ██████  
           
*/

// This textbox system was reused from a previous project sooo
// wtf is this :D bullshit?? like is this cringe off competition dafuk

// Now that's settled, let's get into coding...

// Creating the global topic holder :D
global.topics = {};


// Inserting a new topic :D
global.topics[$ "Tutorial"] = [

	TEXT("Your mother has just picked you up from school and dropped you at home. You're alone now."),
	CHOICE("This gives me some extra time to teach you the basics...",
		OPTION("Did you know you can...", "Start", function() { global.saw_tutorial = true; }),
		OPTION("...use UP and DOWN to reply?", "Start", function() { global.saw_tutorial = true; }))
		
];
