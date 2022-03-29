/// @description Check for mouse presence etc.
var _hover = getHover(); // _hover => local variable!
var _click = _hover && mouse_check_button_pressed(mb_left);

// Hover:
hover = lerp(hover, _hover, 0.1); // Changing hover variable smoothly
x = lerp(x, xstart + _hover * 16, 0.1);

// Click:
// If clicked AND script available
if (_click && script >= 0) {
	script_execute(script);
} else if (_click) {
	room_goto(rmGame);
}
