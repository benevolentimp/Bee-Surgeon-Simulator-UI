function changeMenu(_move, _key) {
	/// @desc Change ds-map key entry by the move value
	/// @_move real		which way to move selection
	/// @_key  string   ds-map key for this selection
	
	// Get the allowed limits for selection
	// Get map array
	var _mapArr = set[? _key];
	
	// Get limits array
	var _limitsArr = _mapArr[1];
	
	// Is the first entry in limits an integer?
	if (is_real(_limitsArr[0])) // Limits are at indices 0 or 1
	{
		var _min = _limitsArr[0];
		var _max = _limitsArr[1];
	
	} else // String entries - from 0 to size-1
	{
		var _min = 0;
		var _max = array_length(_limitsArr) - 1;
	}
	
	// Move selection
	_mapArr[@ 0] = clamp(_move + _mapArr[0], _min, _max);
}