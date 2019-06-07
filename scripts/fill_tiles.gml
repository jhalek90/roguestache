//if global.biome=0{bk=bk_clear_tiles}
//if global.biome=1{bk=bk_clear_tiles}
this_x=((xx*room_size_width)*block_size)
this_y=((yy*room_size_height)*block_size)
xxx=this_x
yyy=this_y

repeat(room_size_height)
{
repeat(room_size_width)
{
//tile_add(bk, choose(2,38,74),choose(2,38,74), 32, 32, xxx, yyy, 1000);
   tile = tile_layer_find(global.tile_layer, xxx,yyy);
    if tile_exists(tile) tile_delete(tile);

xxx+=block_size
}
xxx=this_x
yyy+=block_size
}

//2/38/74
