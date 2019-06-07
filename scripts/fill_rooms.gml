xx=0
yy=0

repeat(rooms_vert)
{
repeat(rooms_hor)
{
val=ds_grid_get(rooms_map,xx,yy)
//if val=0{top_wall() bottom_wall() left_wall() right_wall()}
if ((xx=global.final_xx)and(yy=global.final_yy))
{
fill_end()
}
else
{

if ((xx=global.first_room_xx)and(yy=global.first_room_yy))
{
fill_first()
}
else
{
if val=1{fill_tiles() if random(100)>20{ make_mess() make_enemys() make_crates()}else{make_mini_boss()}}
if val=2{vert_hall_fill() fill_tiles() make_enemys() make_crates()}
if val=3{fill_tiles() make_enemys() make_crates()}// top
if val=4{fill_tiles() make_enemys() make_crates()}//
if val=5{fill_tiles() vert_hall_fill() make_mess()  make_enemys() make_crates()}
if val=6{fill_tiles() vert_hall_fill() make_mess()  make_enemys() make_crates()}
if val=7{vert_hall_fill()  fill_tiles()} //topless
if val=8{vert_hall_fill() fill_tiles()} //bottomless
if val=9{vert_hall_fill()  fill_tiles()} //leftless
if val=10{vert_hall_fill()  fill_tiles()} //rightless

// 1 5 6
}
}
xx+=1
}
xx=0
yy+=1
}
