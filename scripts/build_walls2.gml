xx=0
yy=0

repeat(rooms_vert)
{
repeat(rooms_hor)
{
val=ds_grid_get(rooms_map2,xx,yy)
//if val=0{ds_grid_get(rooms_map,xx,yy-1)=0){top_wall()} bottom_wall() left_wall() right_wall()}

/*
if ((yy=rooms_vert) or(yy=0) or(xx=0) or (xx=rooms_hor)) //
{


if val=1{if(yy=0){top_wall()} bottom_wall()}
if val=2{right_wall() left_wall() vert_hall_fill()}
if val=3{top_wall() left_wall() vert_hall_fill()}
if val=4{top_wall() right_wall() vert_hall_fill()}
if val=5{bottom_wall() left_wall() vert_hall_fill()}
if val=6{bottom_wall() right_wall() vert_hall_fill()}
if val=7{bottom_wall() right_wall() left_wall()} //topless
if val=8{top_wall() right_wall() left_wall()} //bottomless
if val=9{top_wall() bottom_wall() right_wall()} //leftless
if val=10{top_wall() bottom_wall() left_wall()} //rightless
}
*/
//else
//{
if val=1{if (ds_grid_get(rooms_map,xx,yy-1)=0){top_wall()} if (ds_grid_get(rooms_map,xx,yy+1)=0){bottom_wall()}}
if val=2{if (ds_grid_get(rooms_map,xx+1,yy)=0){right_wall()} if (ds_grid_get(rooms_map,xx-1,yy)=0){left_wall()} vert_hall_fill()}


if val=3{if (ds_grid_get(rooms_map,xx,yy-1)=0){top_wall()} if (ds_grid_get(rooms_map,xx-1,yy)=0){left_wall()} vert_hall_fill()}
if val=4{if (ds_grid_get(rooms_map,xx,yy-1)=0){top_wall()} if (ds_grid_get(rooms_map,xx+1,yy)=0){right_wall()} vert_hall_fill()}
if val=5{if (ds_grid_get(rooms_map,xx,yy+1)=0){bottom_wall()} if (ds_grid_get(rooms_map,xx-1,yy)=0){left_wall()} vert_hall_fill()}
if val=6{if (ds_grid_get(rooms_map,xx,yy+1)=0){bottom_wall()} if (ds_grid_get(rooms_map,xx+1,yy)=0){right_wall()} vert_hall_fill()}
if val=7{ if (ds_grid_get(rooms_map,xx,yy+1)=0){bottom_wall()} if (ds_grid_get(rooms_map,xx+1,yy)=0){right_wall()} if (ds_grid_get(rooms_map,xx-1,yy)=0){left_wall()}} //topless
if val=8{if (ds_grid_get(rooms_map,xx,yy-1)=0){top_wall()} if (ds_grid_get(rooms_map,xx+1,yy)=0){right_wall()} if (ds_grid_get(rooms_map,xx-1,yy)=0){left_wall()}} //bottomless
if val=9{if (ds_grid_get(rooms_map,xx,yy-1)=0){top_wall()} if (ds_grid_get(rooms_map,xx,yy+1)=0){bottom_wall()} if (ds_grid_get(rooms_map,xx+1,yy)=0){right_wall()}} //leftless
if val=10{if (ds_grid_get(rooms_map,xx,yy-1)=0){top_wall()} if (ds_grid_get(rooms_map,xx,yy+1)=0){bottom_wall()} if (ds_grid_get(rooms_map,xx-1,yy)=0){left_wall()}} //rightless
//}

if yy=0 {top_wall()}
if yy=rooms_vert-1{bottom_wall()}

if xx=0 {left_wall()}
if xx=rooms_hor{right_wall()}






xx+=1
}
xx=0
yy+=1
}
