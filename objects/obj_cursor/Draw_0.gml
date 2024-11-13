draw_set_alpha(1);
draw_set_color(color_to_paint);

draw_sprite_ext(object_get_sprite(obj_cursor), cur_frame, x, y, 1, 1, 0, color_to_paint, 1);

draw_set_alpha(1);
draw_set_color(c_white);
