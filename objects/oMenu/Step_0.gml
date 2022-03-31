/// @description Menu
// Get input
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);

var _left = keyboard_check_pressed(vk_left);
var _right = keyboard_check_pressed(vk_right);
var _leftHeld = keyboard_check(vk_left);
var _rightHeld = keyboard_check(vk_right);
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

// Holding key down
var _repeatSpd = 8;
var _repeatDelay = 25;

// Holding right
if (_right) timeHeldRight = _repeatDelay;
if (timeHeldRight > 0)
{
	timeHeldRight--;
	if timeHeldRight == 0 and _rightHeld {
		_right = true;
		timeHeldRight = _repeatSpd;
	}
}

// Holding left
if (_left) timeHeldLeft = _repeatDelay;
if (timeHeldLeft > 0)
{
	timeHeldLeft--;
	if timeHeldLeft == 0 and _leftHeld {
		_left = true;
		timeHeldLeft = _repeatSpd;
	}
}

var _move = _down - _up; // _move == 1 or -1
var _hmove = _right - _left;
if (_move != 0) // ==> pressing something
{
	index += _move;
	
	// At edges, loop to other end
	var _size = array_length_2d(menu, sub_menu);
	if (index < 0) {
		index = _size - 1;
	} else if (index >= _size) {
		index = 0;
	}
}

if (_select) or (is_array(menu[sub_menu][index]) and _hmove != 0)
{
	switch (sub_menu)
	{
		case MAIN:
			switch (index) {
				case 0: // Start
					room_goto_next()	
					break;
				case 1: // Options
					sub_menu = 1;
					index = 0;
					break;
				case 2: // Quit
					game_end();
					break;
			}
			break;
			
		case SETTINGS:
			switch (index) {
				case 0: // Graphics
					changeMenu(_hmove, "resol");
					break;
				case 1: // Sounds
					changeMenu(_hmove, "sound");
					break;
				case 2: // Controls
			
					break;
				case 3: // Back
					sub_menu = 0;
					index = 1;
					break;
			}
			break;
	}
}