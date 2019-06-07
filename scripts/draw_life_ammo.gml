//xx=8
//yy=8


if instance_exists(player)
{
draw_sprite(spr_lifebar,(global.life/10),argument0,argument1)
}
else{draw_sprite(spr_lifebar,11,argument0,argument1)}
draw_sprite(spr_ammobar,global.slot_ammo[global.inventory_selected]/10,argument0+182,argument1)


if ((global.inventory_selected=0)or(global.inventory_item[global.inventory_selected]>90))
{
draw_sprite(spr_ammobar2,11,argument0+182,argument1)
}
else
{
draw_sprite(spr_ammobar2,global.ammo_per_gun[global.inventory_selected],argument0+182,argument1)
}


