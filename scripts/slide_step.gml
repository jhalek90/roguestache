
slide=0
if y_speed>0
{
if face=1{if on_solid_ground=0{if place_meeting(x+1,y,wall){slide=1 doubble_jump=0 instance_create(x+(12*face),y+12,dust) }}}
if face=-1{if on_solid_ground=0{if place_meeting(x-1,y,wall){slide=1 doubble_jump=0 instance_create(x+(12*face),y+12,dust) }}}
}



if slide=1{spr=s_stand  image_single=6}
