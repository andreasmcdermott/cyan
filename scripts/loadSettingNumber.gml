ini_open("data.ini");
var data = ini_read_real("settings", argument0, argument1);
ini_close();
return data;
