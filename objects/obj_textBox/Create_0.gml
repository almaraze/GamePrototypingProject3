/// @description initialize

RH = room_height - 22;
x = room_width*.4;
y = RH*.8 +22;

padding = 16;
maxLength = view_wport[0];
text = "Hey that's pretty neat.";
spd = 1;
font = fnt_text;

text_length = string_length(text);
font_size = font_get_size(font);