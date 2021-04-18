/// @description Draw the UI layout

draw_set_color(c_gray);
draw_rectangle(0, 0, room_width, room_height, 0); // fill in gray
draw_set_color(c_black);
draw_sprite(spr_scene, 0, room_width*.25, 22); // draw scene
draw_rectangle_width(0, 22, room_width, room_height, 4); // whole room outline
draw_rectangle_width(0, 22, room_width*.25, RH*.8+22, 4); // inventory panel
draw_text(16, 38, "Inventory");
draw_rectangle_width(0, RH*.8+22, room_width*.4, room_height, 4); // actions panel
draw_text(16, RH*.8 +16+22, "Actions");

draw_sprite(spr_toolbar, 0, 0, 0); // draw toolbar at top