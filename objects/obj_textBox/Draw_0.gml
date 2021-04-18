draw_set_color(c_black);
draw_set_font(fnt_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_rectangle_width(x, y, room_width, room_height, 4); // text panel
draw_text_ext(x + padding, y + padding, text, font_size+(font_size/2), maxLength);