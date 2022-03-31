/// @description 
function onClick(){
	switch (text) {
		case "Continue":
			oManager.event_user(1);
			return instance_activate_layer("Instances");
		case "Options":
			return show_debug_message("Button clicked: " + text);
		case "Quit":
			
			room_goto_previous()
			global.playerScore = 0;
			global.playerLives = 3;
	}
}