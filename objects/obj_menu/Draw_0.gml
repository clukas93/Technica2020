draw_set_font(fnt_menlo);

for(i = 0; i < array_length_1d(menu); i++)
{
	if(selected == i)
	{
		draw_set_color(selected_col);
	}
	else
	{
		draw_set_color(not_selected_col);
	}
	
	// draw menu text
	draw_text(x,y+i*spacing, menu[i]);	
}

// space b/w cursor and menu
var w_cursor = sprite_get_width(spr_cursor);

draw_sprite(spr_cursor, -1, x - w_cursor, y + selected * spacing);

