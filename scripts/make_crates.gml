this_x=((xx*room_size_width)*block_size)
this_y=((yy*room_size_height)*block_size)
xxx=this_x
yyy=this_y
rand_x=0
rand_y=0

if random(100)>1
{
do
{
rand_x=xxx+round(random(room_size_width))*block_size
rand_y=yyy+round(random(room_size_height))*block_size
}
until(place_meeting(rand_x,rand_y,wall)=false)

instance_create(rand_x+16,rand_y+16,choose(crate,crate,crate,barrel,barrel,weapon_crate,barrel,crate))
}
