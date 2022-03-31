/// @description 
draw_set_halign(fa_center);
draw_set_font(fntGame);

// Line spacing
var _gap = 40;

for (var i = 0; i < array_length(menu[sub_menu]); ++i) 
{
	draw_set_color(c_white);
	if (i == index) 
	{
		draw_set_color(c_teal)
	}
	
	// Is this a selectable menu-item or plain-text?
	if (is_array(menu[sub_menu][i])) 
	{
		var _menuArr = menu[sub_menu][i];
		
		// Get map-array
		var _mapArr = set[? _menuArr[1]];
		
		// Get limit-array
		var _limitArr = _mapArr[1];
		
		// Show an integer or text?
		if is_real(_limitArr[0]) {
			var _str = _menuArr[0] + string(_mapArr[0]);
		} else {
			var _str = _menuArr[0] + _limitArr[_mapArr[0]];
		}
		
	} else {
		var _str = menu[sub_menu][i];
	}
	
    draw_text(((room_width/2) * .4 + _gap * i), (room_height * .4 + _gap * i), _str);
}