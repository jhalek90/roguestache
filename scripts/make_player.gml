
this_x=((global.xx*room_size_width)*block_size)+128
this_y=((global.yy*room_size_height)*block_size)+128

if place_meeting(this_x,this_y,small_wall)=false
{
w=instance_create(this_x,this_y,controler)
//w=instance_create(this_x,this_y+96,player)
}
