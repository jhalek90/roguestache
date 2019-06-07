//l=trace_get_length (x, y, size, dir, 32) //10*global.quality)
/* trace_get_length (x, y, length, direction, precision) */
/* returns length until a collision */

/// range_finder(x,y,dir,range,object,prec,notme)
//trace_get_length (x, y, dir, size,light_wall_parent,1,1)
{
    var ox,oy,dir,range,object,prec,notme,dx,dy,sx,sy,distance;
    ox = argument0;
    oy = argument1;
    ddir = argument2;
    range = argument3;
    object = argument4;
    prec = argument5;
    prec = false;
    notme = argument6;
    sx = lengthdir_x(range,ddir);
    sy = lengthdir_y(range,ddir);
    dx = ox + sx;
    dy = oy + sy;
    if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
        distance = -1;
    }else{
        while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
            sx /= 2;
            sy /= 2;
            if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
                dx += sx;
                dy += sy;
            }else{
                dx -= sx;
                dy -= sy;
            }
        }
        distance = point_distance(ox,oy,dx,dy);
    }
    if distance<0 {distance=range}
    return distance;
}
    
/*  OLD CODE 
if (collision_line(argument0,argument1,argument0+lengthdir_x(argument2,argument3),argument1+lengthdir_y(argument2,argument3),light_wall_parent,true,true))
    {
    for (i=1; i<argument2; i+=argument4) //If there is a collison loop through every pixel of the length
        {
        if(collision_point(argument0+lengthdir_x(i,argument3),argument1+lengthdir_y(i,argument3),light_wall_parent,true,true))
            {
            return i;
            }
        }
    }
else
    {
    return argument2;
    }
