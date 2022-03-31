/// @description 
#macro MAIN			0
#macro SETTINGS		1

global.dsm_settings = ds_map_create();
#macro set global.dsm_settings

ds_map_add(set, "resol", [0, ["On", "Off"]]);
ds_map_add(set, "sound", [5, [0, 10]]);

timeHeldRight = 0;
timeHeldLeft = 0;

// Main menu (submenu 0)
menu[MAIN][0] = "Start";
menu[MAIN][1] = "Settings";
menu[MAIN][2] = "Quit";

// Options (submenu 1)
menu[SETTINGS][0] = ["Full-screen -> ", "resol"];
menu[SETTINGS][1] = ["Sound -> ", "sound"];
menu[SETTINGS][2] = "Controls";
menu[SETTINGS][3] = "Back";

index = 0 // Accurate position
sub_menu = 0; // Current submenu