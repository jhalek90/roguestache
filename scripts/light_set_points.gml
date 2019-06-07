//Sets the points and values to later draw a primative. 
dir=0
ray=0

draw_set_color(c_lime)


repeat(360/quality)
{


x2=x
y2=y
i=0

//l=trace_get_length (x, y, size, dir, 5) //10*global.quality)
l=trace_get_length (x, y, dir, size,light_wall_parent,1,1)
if l=0 {l=size}
i=l
point_x[ray]=x+lengthdir_x(l+4,dir)//l+16
point_y[ray]=y+lengthdir_y(l+4,dir)
point_h[ray]=(i/size)/2
if i>size {point_h[ray]=0.5}

ray+=1
dir+=quality
}
