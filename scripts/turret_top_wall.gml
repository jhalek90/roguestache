t=0
i=0
repeat(room_size_width)
{
this_x=((xx*room_size_width)*block_size)+i
this_y=((yy*room_size_height)*block_size)
if place_meeting(this_x,this_y,wall)
{
if ((t>2)and(t<(room_size_width-2))){if random(100)>global.hardness{if place_meeting(this_x+16,this_y+block_size,wall)=false{instance_create(this_x+16,this_y+block_size+16,turret) t=100}}}
}
t+=1
i+=block_size
}
