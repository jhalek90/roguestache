
if instance_exists(areyousure){exit}
if room=room_level_boss{
audio_play_sound(snd_cant,5,0)
exit
}


if global.rage_on=0
{
if global.rage=100
{

stop_music()
audio_play_sound(music_power_up,1,true)


if has_stache_perk(1)
    {
    if instance_exists(player)
        {
        with(enemy_parent)
            {
            if drone_target=0{if point_distance(x,y,player.x,player.y)<400{t=instance_create(x,y,chicken) t.nope=0  if random(10)>7{audio_play_sound(choose(snd_bagok,snd_bagok2,snd_bagok3),1,0)} fake_death=1 instance_destroy() }}
            }
        }
    
    }

t=instance_create(0,0,drama_filter)
t.txt="infinite ammo!"


t=instance_create(mouse_x,mouse_y,super_explosion)
t.hspeed=2

t=instance_create(mouse_x,mouse_y,super_explosion)
t.hspeed=-2

audio_play_sound(choose(snd_power1,snd_power2,snd_power2),1,0)
if instance_exists(player){player.mouth=30}


if has_stache_perk(3)
    {
    global.life=100
    }

if has_stache_perk(4)
    {
    if global.inventory_selected>0{global.ammo_per_gun[global.inventory_selected]+=5}else{global.ammo_per_gun[1]+=5}
    if global.ammo_per_gun[global.inventory_selected]>10{global.ammo_per_gun[global.inventory_selected]=10}
    if global.ammo_per_gun[1]>10{global.ammo_per_gun[1]=10}
    }


}
else{audio_play_sound(snd_cant,5,0) global.stache_power_not_ready=60}
}

