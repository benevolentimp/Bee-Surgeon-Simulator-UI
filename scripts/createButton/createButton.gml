// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createButton(_x, _y, _width, _height, _text, _script) {
	var _button = instance_create_layer(_x, _y, "Instances", oButton); // Creates the button
	
	// Set arguments into variables in buttons
	with (_button) {
		width = _width;
		height = _height;
		text = _text;
		script = _script;
	}
	
	return _button;
}