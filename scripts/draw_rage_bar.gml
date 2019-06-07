//xx=386
//yy=42

//draw_money_bar(8,42)


draw_sprite(spr_rage_bar,0,argument0,argument1)  //8 ,42

if global.rage_on=0{draw_set_color(make_color_rgb(128,128,0))}else{draw_set_color(make_color_rgb(190,0,0))}
draw_rectangle(argument0+68,argument1+6,argument0+68+(global.rage*2),argument1+6+21,0)
if global.rage_on=0{draw_set_color(c_yellow)}else{draw_set_color(c_red)}
draw_rectangle(argument0+68,argument1+6,argument0+68+(global.rage*2),argument1+6+10,0)

power_alpha-=0.05 if power_alpha<0{power_alpha=1}

if global.has_joy=0
{
if global.rage=100{draw_sprite_ext(spr_rage_bar,1,argument0,argument1,1,1,0,c_white,power_alpha)}
}
else
{
if global.rage=100{draw_sprite_ext(spr_rage_bar,3,argument0,argument1,1,1,0,c_white,power_alpha)}
}
if global.stache_power_not_ready>0
{
draw_sprite_ext(spr_rage_bar,2,argument0,argument1,1,1,0,c_white,power_alpha)
}
