//xx=8
//yy=42

//draw_money_bar(8,42)








draw_sprite(spr_money,0,argument0,argument1)//8,76

draw_set_color(c_white)
draw_set_font(fnt_hud)
draw_set_halign(fa_left)
//draw_text(argument0+60,argument1+8,string(global.money))
//draw_set_halign(fa_right)
if ((room=room_level_lab)or(room=room_level_safezone))
{
if global.my_sec<10{draw_text(argument0+200,argument1+8,string(global.my_min)+":0"+string(global.my_sec))}
else{draw_text(argument0+200,argument1+8,string(global.my_min)+":"+string(global.my_sec))}
}


