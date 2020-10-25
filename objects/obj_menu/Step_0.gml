// vertical input
var vert =  keyboard_check_pressed(vk_down) -  keyboard_check_pressed(vk_up);

// move cursor up or down
selected += vert;

// don't let cursor move past menu
selected = clamp(selected, 0, array_length_1d(menu) - 1);

// select menu items
if(keyboard_check_pressed(vk_enter))
{
	// free play
	if(selected == 0)
	{
		room_goto(rm_piano);
	}
	
	// practice
	if(selected == 1)
	{
		room_goto(rm_piano);
	}
	
	// exit
	if(selected == 2)
	{
		game_end();
	}
	
	// mystery...
	if(selected == 3) 
	{
		room_goto(rm_mystery);
	}
}
