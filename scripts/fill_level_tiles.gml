xx=0
yy=0
size=64

width=(240*32)/size
height=(60*32)/size

repeat(height)
    {
    repeat(width)
        {
        if random(10)>8
            {
            tile_add(bk_level_tiles1, choose(0,64,128), choose(0,64,128), size, size, xx, yy, 5000);
            }
        xx+=size
        }
    xx=0
    yy+=size
    }


