//drop shit
if global.inventory_selected=0{audio_play_sound(snd_cant,1,0) cant_drop_pistol=60 exit}//cant drop primary
p=instance_create(player.x+(48*player.face),player.y,random_gun)
p.rand=0
p.image_single=global.inventory_item[global.inventory_selected]
p.ammo=global.ammo_per_gun[global.inventory_selected]
global.inventory_item[global.inventory_selected]=99



do
{
global.inventory_selected-=1
if global.inventory_selected=-1{global.inventory_selected=4}
} until(global.inventory_item[global.inventory_selected]<99)


global.gun=global.inventory_item[global.inventory_selected]
with(player){gun_setup()}
audio_play_sound(snd_select,1,0)
