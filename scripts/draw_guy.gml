

my_alpha=1

if surface_exists(my_surf)=false
{
my_surf=surface_create(128,128)
surface_set_target(my_surf)
draw_clear_alpha(c_black,0)
surface_reset_target()
}

surface_set_target(my_surf)
draw_clear_alpha(c_black,0)


if global.rage_on=1
{
if spr=s_stand{draw_sprite_ext(spr_stand_powerup,image_single,64,64-6,face*(1+(random(1)/5)),1+(random(1)/5),flip,global.beard_color,my_alpha)}//choose(c_lime,c_white,c_yellow,c_red)
if spr=s_run{draw_sprite_ext(spr_run_powerup,image_single,64,64-6,face*(1+(random(1)/5)),1+(random(1)/5),flip,global.beard_color,my_alpha)}
}



if spr=s_stand{s_color=spr_color1}
if spr=s_run{s_color=spr_color2}
flip-=(flip)/4
if abs(flip)<30{flip-=(flip)/4}

gun_x=0
gun_y=0
if landed>0{gun_y+=lengthdir_y(8,flip-90)}else{if on_solid_ground=false{gun_y+=lengthdir_y(4,flip-90)}}

gun_x+=lengthdir_x(8,flip-90)




my_alpha=1
if can_be_hurt>0{my_alpha=0.5 if speed_dash>-30{my_alpha=1}}


draw_sprite_ext(spr,image_single,64,64-6,face,1,flip,image_blend,my_alpha)



/*
if spr=s_stand{draw_sprite_ext(spr_pants_stand,image_single,64,64-6,face,1,flip,global.pant_color,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_pants_run,image_single,64,64-6,face,1,flip,global.pant_color,my_alpha)}
if spr=s_stand{draw_sprite_ext(spr_shirt_stand,image_single,64,64-6,face,1,flip,global.shirt_color,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_shirt_run,image_single,64,64-6,face,1,flip,global.shirt_color,my_alpha)}
*/





yyy_eyes=0

if shot_timer<-5
{
if face=1{if x_speed<-0.5{yyy_eyes=4}}//slipping
if face=-1{if x_speed>0.5{yyy_eyes=4}}//slipping
}


if slide>0
{
if spr=s_stand
{
if on_solid_ground=1{draw_sprite_ext(spr_eye_balls,image_single,(-5*face)+64+lengthdir_x(1,aim_dir),yyy_eyes+(64-7)+lengthdir_y(1,aim_dir),face,1,flip,image_blend,my_alpha)}
else{draw_sprite_ext(spr_eye_balls,image_single,(-14*face)+64+lengthdir_x(1,aim_dir),(64-3)+lengthdir_y(1,aim_dir),face,1,flip,image_blend,my_alpha)}
}
else{draw_sprite_ext(spr_eye_balls,image_single,64+lengthdir_x(1,aim_dir),(64-5)+lengthdir_y(1,aim_dir),face,1,flip,image_blend,my_alpha)}
}
else
{
if spr=s_stand
{
if on_solid_ground=1{draw_sprite_ext(spr_eye_balls,image_single,(-5*face)+64+lengthdir_x(1,aim_dir),yyy_eyes+(64-7)+lengthdir_y(1,aim_dir),face,1,flip,image_blend,my_alpha)}
else{draw_sprite_ext(spr_eye_balls,image_single,(-7*face)+64+lengthdir_x(1,aim_dir),(64-3)+lengthdir_y(1,aim_dir),face,1,flip,image_blend,my_alpha)}
}
else{draw_sprite_ext(spr_eye_balls,image_single,64+lengthdir_x(1,aim_dir),(64-5)+lengthdir_y(1,aim_dir),face,1,flip,image_blend,my_alpha)}
}

if eyes>0
{
if eyes>45
{
if spr=s_stand{draw_sprite_ext(spr_eyes3_stand,image_single,64,64-6,face,1,flip,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_eyes3,image_single,64,64-6,face,1,flip,image_blend,my_alpha)}
}
else
{
if eyes>10
{
if spr=s_stand{draw_sprite_ext(spr_eyes2_stand,image_single,64,64-6,face,1,flip,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_eyes2,image_single,64,64-6,face,1,flip,image_blend,my_alpha)}
}
else
{
if spr=s_stand{draw_sprite_ext(spr_eyes1_stand,image_single,64,64-6,face,1,flip,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_eyes1,image_single,64,64-6,face,1,flip,image_blend,my_alpha)}
}
}
}

draw_beard()
draw_cos()




if mouth>0
{
if mouth>10
{
if spr=s_stand{draw_sprite_ext(spr_mouth2_stand,image_single,64,64-6,face,1,flip,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_mouth2,image_single,64,64-6,face,1,flip,image_blend,my_alpha)}
}
else
{
if spr=s_stand{draw_sprite_ext(spr_mouth1_stand,image_single,64,64-6,face,1,flip,image_blend,my_alpha)}
if spr=s_run{draw_sprite_ext(spr_mouth1,image_single,64,64-6,face,1,flip,image_blend,my_alpha)}
}
}






if global.gun=13
{
if global.ammo>0{draw_sprite_ext(spr_gun,gun_shot_img,64+gun_x,64+gun_y,1,face,aim_dir,image_blend,my_alpha)}
else{draw_sprite_ext(spr_gun14empty,gun_shot_img,64+gun_x,64+gun_y,1,face,aim_dir,image_blend,my_alpha)}
}
else
{
if global.gun=19{if global.slot_ammo[global.inventory_selected]>9{draw_sprite_ext(spr_gun,gun_shot_img,64+gun_x,64+gun_y,1,face,aim_dir,image_blend,my_alpha)}}else{draw_sprite_ext(spr_gun,gun_shot_img,64+gun_x,64+gun_y,1,face,aim_dir,image_blend,my_alpha)}
}
draw_sprite_ext(spr_arm1,gun_shot_img,64+gun_x,64+gun_y,1,face,aim_dir,image_blend,my_alpha)
draw_sprite_ext(spr_arm,0,64+gun_x,64+gun_y,1,face,aim_dir,c_white,my_alpha)//c_white -> lobal.shirt_color


surface_reset_target()
d3d_set_fog(true,c_black,0,0)
draw_surface_ext(my_surf,x-64,y-(xskew*face)-64-(3*yskew)-2,1+(xskew/25) ,1+(yskew/25) ,-(xskew*face),c_white,1)
draw_surface_ext(my_surf,x-64,y-(xskew*face)-64-(3*yskew)+2,1+(xskew/25) ,1+(yskew/25) ,-(xskew*face),c_white,1)
draw_surface_ext(my_surf,x-64-2,y-(xskew*face)-64-(3*yskew),1+(xskew/25) ,1+(yskew/25) ,-(xskew*face),c_white,1)
draw_surface_ext(my_surf,x-64+2,y-(xskew*face)-64-(3*yskew),1+(xskew/25) ,1+(yskew/25) ,-(xskew*face),c_white,1)
d3d_set_fog(false,c_white,0,0)
draw_surface_ext(my_surf,x-64,y-(xskew*face)-64-(3*yskew),1+(xskew/25) ,1+(yskew/25) ,-(xskew*face),c_white,1)
if room=room_title{exit}

if cant_drop_pistol>0
{
draw_sprite_text(x,y-32,"Can't drop pistol",1,c_white,1)
exit
}

if f_to_drop>0
{
if global.has_joy=1{draw_sprite_text(x,y-32,"'B' to drop current gun",1,c_white,1)}
else{draw_sprite_text(x,y-32,"'F' to drop current gun",1,c_white,1)}
exit
}

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






