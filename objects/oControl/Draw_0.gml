/// @description
draw_text(8, 8, "Score: " + string(global.playerScore));

draw_set_halign(fa_right);
draw_text(room_width - 8, 8, "High Score: " + string(global.highScore));
draw_set_halign(fa_left);

var _x = (room_width/2) - ((global.playerLives - 1)/2 * 64);
repeat(global.playerLives) {
	draw_sprite_ext(
		sprBat,
		0, 
		_x,
		room_height-16,
		0.69,
		0.69,
		0,
		c_white,
		0.5
	);
	
	_x += 64;
}