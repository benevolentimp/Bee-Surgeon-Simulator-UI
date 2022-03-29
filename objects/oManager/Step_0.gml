/// @description Menu from "M"
if (keyboard_check_pressed(ord("M"))) {
	menuOpen = !menuOpen;
	
	switch (gamePause) {
		case false: 
			instance_deactivate_layer("Instances");
			gamePause = true;
			break;
		case true:
			instance_activate_layer("Instances");
			gamePause = false;
			break;
	}
	
	if (menuOpen) {
		event_user(0);
	} else {
		event_user(1);
	}
}
