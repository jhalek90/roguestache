
if room=room_died{exit}
if room=room_title{exit}
if draw=0{exit}
if global.xp_i_have>0
xp_bar=(global.xp_i_have/global.xp_i_need)*100
if instance_exists(player)
{
draw_sprite(spr_lifebar,(global.life/10),+8,+8)
}
else{draw_sprite(spr_lifebar,11,+8,+8)}
draw_sprite(spr_ammobar,global.ammo/10,+190,+8)

draw_sprite_ext(spr_gun_icons,global.inventory_item[0],730,+32,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[1],730+32,+32,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[2],730+64,+32,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[3],730+96,+32,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[4],730+128,+32,1,1,0,c_white,1)


draw_sprite(spr_exp_bar,0,+8,+42)
draw_sprite(spr_money,0,+8,+76)
draw_set_color(c_green)
draw_rectangle(+76,+48,+76+(xp_bar*2),+68,0)
draw_set_color(c_lime)
draw_rectangle(+76,+48,+76+(xp_bar*2),+58,0)
draw_sprite(spr_rage_bar,0,+190+196,+8)

if global.rage_on=0{draw_set_color(c_blue)}else{draw_set_color(make_color_rgb(190,0,0))}
draw_rectangle(+190+196+68,14,+190+196+68+(global.rage*2),+14+21,0)
if global.rage_on=0{draw_set_color(c_aqua)}else{draw_set_color(c_red)}
draw_rectangle(+190+196+68,14,+190+196+68+(global.rage*2),+14+10,0)

power_alpha-=0.05 if power_alpha<0{power_alpha=1}
if global.rage=100{draw_sprite_ext(spr_rage_bar,1,+190+196,+8,1,1,0,c_white,power_alpha)}


draw_set_color(c_white)
draw_set_font(fnt_hud)
draw_set_halign(fa_left)
draw_text(+320,+48,":"+string(global.xp_level))
draw_text(100,+84,string(global.money))
draw_set_halign(fa_right)
if ((room=room_level_lab)or(room=room_level_safezone))
{
draw_text(global.gui_w -8,+8,"Area: "+string(global.level_im_on))
draw_text(global.gui_w -8,+32,"Kills: "+string(global.total_kills))
//draw_sprite_text(window_get_width() -8,+8,"Area "+string(global.level_im_on),2,c_white,2)
//draw_sprite_text(window_get_width() -8,+32,"Kills "+string(global.total_kills),2,c_white,2)
draw_set_halign(fa_left)
if global.my_sec<10{draw_text(+240,+84,string(global.my_min)+":0"+string(global.my_sec))}
else{draw_text(+240,+84,string(global.my_min)+":"+string(global.my_sec))}
}
//draw_text(8,window_get_height()-24,"BETA VERSION!    FPS: "+string(fps_real)+"  INSTANCES: "+string(instance_count))
draw_set_halign(fa_right)
draw_text(global.gui_w-8,global.gui_h-24,"BETA VERSION!    FPS: "+string(fps)+" / "+string(round(fps_real))+"  INSTANCES: "+string(instance_count))



if global.cheat=1

{
global.cheat_string=keyboard_string
draw_sprite_text(0+global.gui_w/2,-16+global.gui_h/2,"Cheat code",1,c_red,4)
draw_sprite_text(0+global.gui_w/2,32+global.gui_h/2,global.cheat_string,1,c_white,3)

if keyboard_check_pressed(vk_enter)
{
global.cheat=0
if global.cheat_string="nextplease" {global.level_im_on+=1 if global.level_im_on>10 {global.level_im_on=10} alarm[2]=2}
if global.cheat_string="healme" {global.life=100}
if global.cheat_string="cashmoney" {repeat(100) {instance_create(mouse_x,mouse_y,credit)}}
if global.cheat_string="greendots" {repeat(100) {instance_create(mouse_x,mouse_y,xp_orb)}}
if global.cheat_string="bosstime" {global.level_im_on=10 alarm[2]=2}
if global.cheat_string="moreguns" {instance_create(mouse_x,mouse_y,random_gun)}
if global.cheat_string="rip" {global.life=-1}
if global.cheat_string="wax" {g=instance_create(mouse_x,mouse_y,random_gun) g.image_single=96}
if global.cheat_string="ilikefire" {global.inventory_item[1]=6}

}


}
