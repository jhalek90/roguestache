//xx=8
//yy=42

//draw_money_bar(8,42)



str=""

if global.total_money_life <10000{str="0"}
if global.total_money_life <1000{str="00"}
if global.total_money_life <100{str="000"}
if global.total_money_life <10{str="0000"}


draw_sprite(spr_money,1,argument0,argument1)//8,76

draw_set_color(c_white)
draw_set_font(fnt_hud)
draw_set_halign(fa_left)
draw_text(argument0+50,argument1+8,str+string(global.total_money_life))

