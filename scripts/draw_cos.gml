

x_cos_off=0
y_cos_off=0

ff=face
if slide=1{ff=-ff}

if spr=s_stand
{
x_cos_off=1
y_cos_off=-18

if ff=-1
{
x_cos_off=-1
}
if slide=1{y_cos_off+=4}else{if on_solid_ground=0{y_cos_off+=4 x_cos_off-=(2*ff)}}
}

if spr=s_run
{
x_cos_off=5
y_cos_off=-16

if ff=-1
{
x_cos_off=-5
}
//if slide=1{y_cos_off+=4}

}

x_cos_off+=(-5*ff)
y_cos_off+=11

if my_alpha<0.8{my_alpha=0.8}
if landed>0{y_cos_off+=3}
draw_sprite_ext(spr_cos_icons_draw,global.cos_selected,64+x_cos_off,64+y_cos_off,ff,1,flip,c_white,my_alpha)

//24 24
// 19 35
// -5 +11
