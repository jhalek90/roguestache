

draw_sprite_ext(spr_gui_slot_box,0,argument0,argument1,1,1,0,c_white,1)
draw_sprite_ext(spr_gui_slot_box,1,argument0+55,argument1,1,1,0,c_white,1)
draw_sprite_ext(spr_gui_slot_box,2,argument0+110,argument1,1,1,0,c_white,1)
draw_sprite_ext(spr_gui_slot_box,3,argument0+165,argument1,1,1,0,c_white,1)
draw_sprite_ext(spr_gui_slot_box,4,argument0+220,argument1,1,1,0,c_white,1)

if global.inventory_max_slots>5
{
draw_sprite_ext(spr_gui_slot_box,5,argument0+275,argument1,1,1,0,c_white,1)
}

if global.inventory_max_slots>6
{
draw_sprite_ext(spr_gui_slot_box,6,argument0+330,argument1,1,1,0,c_white,1)
}

if global.inventory_max_slots>7
{
draw_sprite_ext(spr_gui_slot_box,7,argument0+385,argument1,1,1,0,c_white,1)
}

if global.inventory_max_slots>8
{
draw_sprite_ext(spr_gui_slot_box,8,argument0+440,argument1,1,1,0,c_white,1)
}

draw_sprite_ext(spr_gui_slot_box,9,argument0+(55*global.inventory_selected),argument1,1,1,0,c_white,1)

draw_sprite_ext(spr_gun_icons,global.inventory_item[0],argument0+25,argument1+25,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[1],argument0+25+55,argument1+25,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[2],argument0+25+110,argument1+25,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[3],argument0+25+165,argument1+25,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[4],argument0+25+220,argument1+25,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[5],argument0+25+275,argument1+25,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[6],argument0+25+330,argument1+25,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[7],argument0+25+385,argument1+25,1,1,0,c_white,1)
draw_sprite_ext(spr_gun_icons,global.inventory_item[8],argument0+25+440,argument1+25,1,1,0,c_white,1)




