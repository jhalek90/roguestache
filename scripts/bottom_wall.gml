t=0
i=0
repeat(room_size_width+1)
{
this_x=((xx*room_size_width)*block_size)+i
this_y=(room_size_height*block_size)+((yy*room_size_height)*block_size)
if place_meeting(this_x,this_y,small_wall)=false
{
w=instance_create(this_x,this_y,small_wall)
//w.image_single=2
//if random(100)>90{l=instance_create(this_x,this_y,lightbase) l.image_angle=180}

}
t+=1
i+=block_size
}


t=0
i=0
repeat((room_size_width*block_size)/128)
{
this_x=((xx*room_size_width)*block_size)+i
this_y=(room_size_height*block_size)+((yy*room_size_height)*block_size)
l=instance_create(this_x,this_y,tree)
t+=1
i+=128
}

//room_size_width*block_size
