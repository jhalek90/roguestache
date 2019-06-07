if global._joyaim=0
{
global.aim_left=0
global.aim_right=0
global.aim_down=0
global.aim_up=0
aim_dir=point_direction(x,y,mouse_x,mouse_y)+swing+aim_recoil
if mouse_x<x-32{global.aim_left=1}
if mouse_x>x+32{global.aim_right=1}
if mouse_y<y-32{global.aim_up=1}
if mouse_y>y+32{global.aim_down=1}
}
else
{
//if joystick_exists(0)=false{global._joyaim=0 exit}
aim_dir=controller_support.aim+swing+aim_recoil
}
