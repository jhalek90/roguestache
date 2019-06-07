global.finished=1
global.final_xx=xx
global.final_yy=yy




i=0

this_x=((xx*room_size_width)*block_size)
this_y=((yy*room_size_height)*block_size)


this_x+=256
this_y+=256
w=instance_create(this_x,this_y,door)
if place_meeting(this_x,this_y,wall)=false{w=instance_create(this_x,this_y,box)}
//if place_meeting(this_x,this_y+block_size,wall)=false{w=instance_create(this_x+block_size,this_y,box)}
if place_meeting(this_x,this_y-block_size,wall)=false{w=instance_create(this_x-block_size,this_y,box)}
//if place_meeting(this_x,this_y-block_size*2,wall)=false{w=instance_create(this_x-block_size*2,this_y,box)}
