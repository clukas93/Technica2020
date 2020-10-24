// Vertical input is determined by the press of up
// and down buttons
var vert =  keyboard_check_pressed(vk_down) -  keyboard_check_pressed(vk_up);

// Move cursor up or down depending on inputs
selected += vert;

// Don't let cursor move past where it should be
selected = clamp(selected, 0, array_length_1d(menu) - 1);

// Whenever you press the confirm button, do whatever
// it should do depending on what menu element is selected
if(keyboard_check_pressed(vk_enter))
{
	if(selected == 0) // Play by default
	{
		room_goto(rm_piano);
	}
	
	if(selected == 1) // Options by default
	{
		room_goto(rm_piano);
	}
	
	if(selected == 2) // Stats by default
	{
		game_end();
	}
	
	if(selected == 3) // Exit by default
	{
		room_goto(rm_mystery);
	}
}
