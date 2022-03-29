 /// @description 
if (bbox_left < 0 or bbox_right > room_width) {
	x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
	hspeed *= -1;
}

if (bbox_top < 0) {
	y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);
	vspeed *= -1;
}

if (bbox_bottom > room_height) {
	// subtract life
	global.playerLives--;
	instance_destroy();
	
	if (global.playerLives <= 0) {
		oControl.gameOver = true;
		if (global.playerScore > global.highScore) {
			global.highScore = global.playerScore;
		}
		
	} else {
		instance_create_layer(xstart, ystart, "Instances", oBall);
	}
}