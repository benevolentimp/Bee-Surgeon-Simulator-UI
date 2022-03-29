/// @description
if (instance_number(oBrick) <= 0) {
	global.highScore = global.playerScore + (global.playerLives);
	room_restart();
}

if (gameOver) {
	if (keyboard_check_pressed(vk_anykey)) {
		room_restart();
		global.playerScore = 0;
		global.playerLives = 3;
	}
}