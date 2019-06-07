last_side=0

this_x=((xx*room_size_width)*block_size)
this_y=((yy*room_size_height)*block_size)

this_y_off=(room_size_height)*block_size
xxx=0
yyy=0

repeat((room_size_height/3))
{
do {side=choose(1,2,3)}until(not(side=last_side))
last_side=side
if side=1
{
i=0 repeat(3+random(2)){if place_meeting(this_x+i,this_y+this_y_off,wall)=false{ instance_create(this_x+i,this_y+this_y_off,box)} i+=block_size}
}
if side=2
{
i=0 repeat(3+random(2)){if place_meeting(this_x+(room_size_width*block_size)-i,this_y+this_y_off,wall)=false{instance_create(this_x+(room_size_width*block_size)-i,this_y+this_y_off,box)} i+=block_size}
}
if side=3
{
i=0
xxx=this_x+(round(random(3))*block_size)
xxx+=2*block_size
yyy=this_y+this_y_off
repeat(2+random(2)){if place_meeting(xxx+i,yyy,wall)=false{instance_create(xxx+i,yyy,box)}i+=block_size}
}


this_y_off-=2*block_size
}
