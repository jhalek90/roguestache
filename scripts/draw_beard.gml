



x_cos_off=0
y_cos_off=0

bs=spr_hat0
if global.hat=0
    {
    if global.custom_beard=1{bs=spr_special_hat_1 global.beard_color=c_white}
    if global.custom_beard=2{bs=spr_special_hat_2 global.beard_color=c_white}
    if global.custom_beard=3{bs=spr_special_hat_3 global.beard_color=c_white}
    if global.custom_beard=4{bs=spr_special_hat_4 global.beard_color=c_white}
    }
else    
    {
    global.beard_color=c_black
    }
    
if global.hat=1 {bs=spr_hat1 global.beard_color=c_black}
if global.hat=2 {bs=spr_hat2 global.beard_color=c_black}
if global.hat=3 {bs=spr_hat3 global.beard_color=c_black}

if ((global.rage_on=1)or(global.power_ready=1))
{
global.beard_color=make_color_hsv(global.hue,255,255)
}

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
draw_sprite_ext(bs,1+round(global.life/20),64+x_cos_off,64+y_cos_off,ff,1,flip+hat_spin,global.beard_color,my_alpha)
if global.hat=1{draw_sprite_ext(bs,7,64+x_cos_off,64+y_cos_off,ff,1,flip+hat_spin,c_white,my_alpha)}

//24 24
// 19 35
// -5 +11
