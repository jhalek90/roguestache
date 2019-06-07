//do_rumble(time, power)

if global.has_joy=0{exit}
if room=room_title
{
global.rumble=0
global.rumble_power=0
exit
}
global.rumble=argument0
global.rumble_power=argument1
