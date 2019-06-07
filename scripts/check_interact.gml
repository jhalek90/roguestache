do_i_have_key()





if instance_exists(door)
{
if point_distance(x,y,instance_nearest(x,y,door).x,instance_nearest(x,y,door).y)<32

{
if instance_nearest(x,y,door).done=0
{
if ((keyboard_check(ord('E')))or(joystick_check_button(0,4))){with(instance_nearest(x,y,door)){event_user(1)}}
}
else
{
if global.leveldone=0
{
global.leveldone=1
if room=room_level_afterboss{instance_destroy()}
controler.alarm[2]=1
}
}

}
}
