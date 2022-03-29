/// @description 
if (image_index == 0) {
	with (oBat) {
		image_xscale = 1.5;
		alarm[0] = 10*room_speed;
	}
} else {
	with (oBall) {
		speed = spd;
	}
}

instance_destroy();