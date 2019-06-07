fall-=1
if flip="down"
{
image_angle=0
x_gravity=0
y_gravity=1
if face=1
{
if on_solid_ground=1{x_speed+=1}
if place_meeting(x+1,y,wall){flip="right" exit}
}
if face=-1
{
if on_solid_ground=1{x_speed-=1}
if place_meeting(x-1,y,wall){flip="left" exit}
}
exit
}

if flip="top"
{
image_angle=180
x_gravity=0
y_gravity=-1
if face=1
{
if on_solid_ground=1{x_speed-=1}
if place_meeting(x-1,y,wall){flip="left" exit}
if fall<0{if on_solid_ground=0{fall=10 flip="right" exit}}
}
if face=-1
{
if on_solid_ground=1{x_speed+=1}
if place_meeting(x+1,y,wall){flip="right" exit}
if fall<0{if on_solid_ground=0{fall=10 flip="left" exit}}
}
exit
}

if flip="left"
{
image_angle=270
x_gravity=-1
y_gravity=0
if face=1
{
y_speed+=1
if place_meeting(x,y+1,wall){flip="down"}
}
if face=-1
{
if on_solid_ground=1{y_speed-=1}
if place_meeting(x,y-1,wall){flip="top"}
}
if fall<0{if on_solid_ground=0{fall=10 flip="down"}}
exit
}

if flip="right"
{
image_angle=90
x_gravity=1
y_gravity=0
if face=1
{
y_speed-=1
if place_meeting(x,y-1,wall){flip="top"}
}
if face=-1
{
if on_solid_ground=1{y_speed+=1}
if place_meeting(x,y+1,wall){flip="down"}
}
if fall<0{if on_solid_ground=0{fall=10 flip="down"}}
exit
}
