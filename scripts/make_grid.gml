
//make_grid(block_size,rooms_width,rooms_height,rooms_wide,rooms_hight,total_min_rooms)
//make_grid(8,20,16,6,5,5)




if mode=1
{

block_size=argument0
room_size_width=argument1
room_size_height=argument2
rooms_hor=argument3
rooms_vert=argument4
global.total_rooms=argument5
rooms_map=ds_grid_create(rooms_hor,rooms_vert)
rooms_map2=ds_grid_create(rooms_hor,rooms_vert)
txt="."
global.final_xx=0
global.final_yy=0
global.finished=0
global.first_room_xx=0
global.first_room_yy=0



//////////////////////////////////////////////////////////////////////////////////////////////
bk=bk_tile1
//if global.biome=1{bk=bk_tile2}
//if global.biome=2{bk=bk_tile3}
//if global.biome=3{bk=bk_tile4}
xxx=0
yyy=0
repeat(room_height/block_size)
{
repeat(room_width/block_size)
{
if random(100)>90
{
c1=choose(2,38,74)
c2=2
}
else
{
c1=choose(2,38,74)
c2=choose(38,74)
}

tile_add(bk, c1,c2, 32, 32, xxx, yyy, global.tile_layer);
xxx+=block_size
}
xxx=0
yyy+=block_size
}

///////////////////////////////////////////////////////////////////////////////////////////////
}

if mode=2
{
txt=".."
make_path()
make_path2()

}
if mode=3
{
txt="..."
build_walls2()
build_walls()

}
if mode=4
{
txt="...."
fill_rooms()
fill_rooms2()
}
if mode=5
{
txt="....."
fill_level_tiles()
make_player()

}

if mode=6
{
if instance_exists(door)=false{room_restart()}
else
{

instance_destroy()
}
}
