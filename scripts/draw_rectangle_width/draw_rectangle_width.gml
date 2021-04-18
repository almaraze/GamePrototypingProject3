///draw_rectangle_width(x1, y1, x2, y2, w)
function draw_rectangle_width(x1, y1, x2, y2, w) {
	x1 = argument0;
	x2 = argument2;
	y1 = argument1;
	y2 = argument3;
	w = argument4;
	draw_line_width(x1-w/2, y1, x2, y1, w); //top left to top right
	draw_line_width(x2-w/2, y1, x2-w/2, y2, w); //top right to bottom right
	draw_line_width(x2-w/2, y2-w/2, x1, y2-w/2, w); //bottom right to bottom left
	draw_line_width(x1, y1, x1, y2, w); //bottom left to top left
}