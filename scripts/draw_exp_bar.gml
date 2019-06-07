//xx=368
//yy=8

draw_sprite(spr_exp_bar,0,argument0,argument1)
draw_set_color(make_color_rgb(128,128,0))
draw_rectangle(argument0+68,argument1+8,argument0+68+(xp_bar*2),argument1+26,0)
draw_set_color(c_yellow)
draw_rectangle(argument0+68,argument1+7,argument0+68+(xp_bar*2),argument1+18,0)


draw_set_color(c_white)
draw_set_font(fnt_hud)
draw_set_halign(fa_left)
draw_text(argument0+274,argument1+8,"["+string(global.xp_level)+"]")

