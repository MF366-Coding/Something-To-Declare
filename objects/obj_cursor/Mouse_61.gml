if cur_color + 1 >= array_length(COLORS)
{
	
	cur_color = 0;
	
}

cur_color += 1;
color_to_paint = COLORS[cur_color];
