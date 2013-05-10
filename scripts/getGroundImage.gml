var xpos = argument0;
var ypos = argument1;

var neighbors = 0;

if(!position_meeting(xpos - 16, ypos, objGround) && (xpos - 16) > 0) neighbors = neighbors | 1;
if(!position_meeting(xpos + 48, ypos, objGround) && (xpos + 48) < room_width) neighbors = neighbors | 2;
if(!position_meeting(xpos, ypos - 16, objGround) && (ypos - 16) > 0) neighbors = neighbors | 4;
if(!position_meeting(xpos, ypos + 48, objGround) && (ypos + 48) < room_height) neighbors = neighbors | 8;

if(neighbors == 0)
{
    if(!position_meeting(xpos - 16, ypos - 16, objGround) && (xpos - 16) > 0 && (ypos - 16) > 0) 
        neighbors = neighbors | 1;
    if(!position_meeting(xpos + 48, ypos - 16, objGround) && (xpos + 48) < room_width && (ypos - 16) > 0) 
        neighbors = neighbors | 2;
    if(!position_meeting(xpos + 48, ypos + 48, objGround) && (xpos + 48) < room_width && (ypos + 48) < room_height) 
        neighbors = neighbors | 4;
    if(!position_meeting(xpos - 16, ypos + 48, objGround) && (xpos - 16) > 0 && (ypos + 48) < room_height) 
        neighbors = neighbors | 8;

    if(neighbors == 0) return 0;
    if(neighbors == 1) return 14;
    if(neighbors == 2) return 15;
    if(neighbors == 4) return 16;
    if(neighbors == 8) return 17;
    if(neighbors == 12) return 18;
    if(neighbors == 3) return 19;
}
if(neighbors == 8) return 1;
if(neighbors == 9) return 2;
if(neighbors == 10) return 3;
if(neighbors == 1) return 4;
if(neighbors == 5) return 5;
if(neighbors == 2) return 6;
if(neighbors == 6) return 7;
if(neighbors == 4) return 8;
if(neighbors == 15) return 9;
if(neighbors == 7) return 10;
if(neighbors == 11) return 11;
if(neighbors == 13) return 12;
if(neighbors == 14) return 13;
if(neighbors == 3) return 21;
if(neighbors == 12) return 20;
