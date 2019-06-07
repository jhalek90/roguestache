t=0
i=0
repeat(room_size_width)
{
this_x=((xx*room_size_width)*block_size)+i
this_y=((yy*room_size_height)*block_size)
if place_meeting(this_x,this_y,small_wall)=false
{
w=instance_create(this_x,this_y,small_wall)
//w.image_single=1
if random(100)>95{instance_create(this_x,this_y+block_size,lightbase)}
}
t+=1
i+=block_size
}
