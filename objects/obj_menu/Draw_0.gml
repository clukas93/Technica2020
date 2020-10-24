// Set default font
draw_set_font(fnt_menlo);

// Loop through the array containing each menu element
for(i = 0; i < array_length_1d(menu); i++)
{
	// If you're looking at the currently selected element, 
	// then draw it with a certain color, if not, then with
	// another color
	if(selected == i)
	{
		draw_set_color(selected_col);
	}
	else
	{
		draw_set_color(not_selected_col);
	}
	
	// Draw the text
	draw_text(x,y+i*spacing, menu[i]);	
}

// Getting width of cursor to separate it a bit from the menu
var w_cursor = sprite_get_width(spr_cursor);

// Draw cursor at where it should be, but half its width 
// to the left of the menu
draw_sprite(spr_cursor, -1, x - w_cursor, y + selected * spacing);

