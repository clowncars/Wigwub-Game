/// @description Title Menu
#macro SAVEFILE "Save.sav"

width = 100;
height = 60;

op_border = 8;
op_space = 30;

pos = 0;

//title menu
option[0, 0] = "Start Game";
option[0, 1] = "Settings";
option[0, 2] = "Quit Game";

//setting menu
option[1, 0] = "Fullscreen";
option[1, 1] = "Brightness";
option[1, 2] = "Go Fuck Yourself";
option[1, 3] = "Back";

op_length = array_length(option);
menu_level = 0;