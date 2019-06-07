if global.rage_on=1
{
if spr=s_stand{draw_sprite_ext(spr_stand_powerup,image_single,x,y-6,face,1,flip,choose(c_lime,c_white,c_yellow,c_red),my_alpha)}
if spr=s_run{draw_sprite_ext(spr_run_powerup,image_single,x,y-6,face,1,flip,choose(c_lime,c_white,c_yellow,c_red),my_alpha)}
}


//draw_sprite_ext(spr, image_single, x, y-6, face, 1, flip, image_blend, image_alpha);


if spr=s_stand{s_color=spr_color1}
if spr=s_run{s_color=spr_color2}
flip-=(flip)/4
if abs(flip)<30{flip-=(flip)/4}

gun_x=0
gun_y=0
if landed>0{gun_y+=lengthdir_y(8,flip-90)}else{if on_solid_ground=false{gun_y+=lengthdir_y(4,flip-90)}}

gun_x+=lengthdir_x(8,flip-90)




my_alpha=1
if can_be_hurt>0{my_alpha=0.5}

draw_sprite_ext(spr,image_single,x,y-6,face,1,flip,image_blend,my_alpha)




if spr=s_stand{draw_sprite_ext(spr_pants_stand,image_single,x,y-6,face,1,flip,global.pant_color,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_pants_run,image_single,x,y-6,face,1,flip,global.pant_color,my_alpha)}
if spr=s_stand{draw_sprite_ext(spr_shirt_stand,image_single,x,y-6,face,1,flip,global.shirt_color,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_shirt_run,image_single,x,y-6,face,1,flip,global.shirt_color,my_alpha)}




if global.hat=5
{
}
else
{
if eyes>0
{

if eyes>45
{
if spr=s_stand{draw_sprite_ext(spr_eyes3_stand,image_single,x,y-6,face,1,flip,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_eyes3,image_single,x,y-6,face,1,flip,image_blend,my_alpha)}
}
else
{
if eyes>10
{
if spr=s_stand{draw_sprite_ext(spr_eyes2_stand,image_single,x,y-6,face,1,flip,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_eyes2,image_single,x,y-6,face,1,flip,image_blend,my_alpha)}
}
else
{
if spr=s_stand{draw_sprite_ext(spr_eyes1_stand,image_single,x,y-6,face,1,flip,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_eyes1,image_single,x,y-6,face,1,flip,image_blend,my_alpha)}
}
}

}
}





if global.hat=0
{
if spr=s_stand{draw_sprite_ext(spr_hat0_stand,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_hat0,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
}

if global.hat=1
{
if spr=s_stand{draw_sprite_ext(spr_hat1_stand,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_hat1,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
}

if global.hat=2
{
if spr=s_stand{draw_sprite_ext(spr_hat2_stand,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_hat2,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
}

if global.hat=3
{
if spr=s_stand{draw_sprite_ext(spr_hat3_stand,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_hat3,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
}

if global.hat=4
{
if spr=s_stand{draw_sprite_ext(spr_hat4_stand,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_hat4,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
}

if global.hat=5
{
if spr=s_stand{draw_sprite_ext(spr_hat5_stand,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_hat5,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
}

if global.hat=6
{
if spr=s_stand{draw_sprite_ext(spr_hat6_stand,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_hat6,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
}

if global.hat=7
{
if spr=s_stand{draw_sprite_ext(spr_hat7_stand,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_hat7,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
}

if global.hat=8
{
if spr=s_stand{draw_sprite_ext(spr_hat8_stand,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_hat8,image_single,x,y-6,face,1,flip+hat_spin,image_blend,my_alpha)}
}


if mouth>0
{
if mouth>10
{
if spr=s_stand{draw_sprite_ext(spr_mouth2_stand,image_single,x,y-6,face,1,flip,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_mouth2,image_single,x,y-6,face,1,flip,image_blend,my_alpha)}
}
else
{
if spr=s_stand{draw_sprite_ext(spr_mouth1_stand,image_single,x,y-6,face,1,flip,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_mouth1,image_single,x,y-6,face,1,flip,image_blend,my_alpha)}
}
}



if global.gun=13
{
if global.ammo>0{draw_sprite_ext(spr_gun,global.gun,x+gun_x,y+gun_y,1,face,aim_dir,image_blend,my_alpha)}
else{draw_sprite_ext(spr_gun14empty,global.gun,x+gun_x,y+gun_y,1,face,aim_dir,image_blend,my_alpha)}
}
else
{
if global.gun=19{if global.slot_ammo[global.inventory_selected]>9{draw_sprite_ext(spr_gun,global.gun,x+gun_x,y+gun_y,1,face,aim_dir,image_blend,my_alpha)}}else{draw_sprite_ext(spr_gun,global.gun,x+gun_x,y+gun_y,1,face,aim_dir,image_blend,my_alpha)}
}
draw_sprite_ext(spr_arm,global.gun,x+gun_x,y+gun_y,1,face,aim_dir,image_blend,my_alpha)
draw_sprite_ext(spr_arm_color,0,x+gun_x,y+gun_y,1,face,aim_dir,global.shirt_color,my_alpha)

if level_up>0
{
//draw_sprite_text(x,y-32,"Level Up",1,c_lime,1)
}
else{if reloading=1{
if global.gun=13{draw_sprite_text(x,y-32,"Recharging",1,c_white,1)}
else{draw_sprite_text(x,y-32,"Reloading",1,c_white,1)}

draw_rectangle(x-(15-(reload_timer/4)),y-28,x+(15-(reload_timer/4)),y-27,0)
}
}

//draw_sprite_text(x,y-64,"gun "+string(global.gun),1,c_white,1)

