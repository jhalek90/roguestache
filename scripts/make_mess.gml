
if random(10)>7{exit}

repeat(random(7))
{
yyy=0
xxx=0
this_x=((xx*room_size_width)*block_size)
this_y=((yy*room_size_height)*block_size)
this_x+=block_size
this_y+=(room_size_height-1)*block_size
this_width=choose(1,1)
this_height=choose(1,2,3,4)
this_x+=(block_size)
this_x+=round(random(5))*block_size
repeat(this_height)
{
repeat(this_width)
{
if place_meeting(this_x,this_y,wall)=false { if place_meeting(this_x,this_y-1,wall)=false {w=instance_create(this_x,this_y,box)}}
this_x+=block_size
}
this_x-=(block_size*this_width)
this_y-=block_size
}
}


repeat(random(3))
{

this_x=((xx*room_size_width)*block_size)
this_y=((yy*room_size_height-1)*block_size)
this_x+=block_size
this_y+=(room_size_height)*block_size
this_width=choose(1,2,3,4,5,6,7)
this_x+=(block_size)
this_x+=round(random(5))*block_size

repeat(this_width)
{
if place_meeting(this_x,this_y,wall)=false
{
if place_meeting(this_x,this_y+1,wall){if random(100)>50{repeat(3){w=instance_create(this_x+random(32),this_y+32,spike)}}
}
}
this_x+=block_size
}
}
