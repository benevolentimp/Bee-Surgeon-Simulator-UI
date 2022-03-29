/// @description 1/3 chance for power-up
if (irandom(2) == 0) {
	instance_create_layer(x, y, "Instances", oPowers)
}