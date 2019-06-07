t=0
i=0
repeat(room_size_height)
{
this_x=(room_size_width*block_size)+((xx*room_size_width)*block_size)
this_y=((yy*room_size_height)*block_size)+i
if place_meeting(this_x,this_y,small_wall)=false
{
w=instance_create(this_x,this_y,small_wall)
//w.image_single=3
//if random(100)>90{l=instance_create(this_x,this_y,lightbase)l.image_angle=270}
}
t+=1
i+=block_size
}
