


if reloading=1{gun_shot_img=2}
else
{
if shot_timer>3{gun_shot_img=1}else{gun_shot_img=0}
}

if global.slot_ammo[global.inventory_selected]>100{global.slot_ammo[global.inventory_selected]=100}
if global.slot_ammo[global.inventory_selected]<0{global.slot_ammo[global.inventory_selected]=0}

if global.inventory_item[global.inventory_selected]>90{global.slot_ammo[global.inventory_selected]=100 reload_timer=0 reloading=0}

//if global.rage_on=1{reload_timer=0 reloading=0}

if ((global.ammo_per_gun[global.inventory_selected]>0)or(global.inventory_selected=0))
    {                    //if global.gun=0{reload_timer+=0.5}
    if global.slot_ammo[global.inventory_selected]<1
        {
        if reloading=0
            {
            reloading=1 
            } 
        reload_timer+=2*global.beard_reload_buff
        if global.perk1=6 {reload_timer+=0.2}
        if global.perk1=7 {reload_timer+=0.3}
        if global.perk1=8 {reload_timer+=0.4}
        if global.gun=13{reload_timer+=60}
        if global.gun=18{reload_timer+=1}
        if reload_timer>60
            {
            reload_timer=0 
            if ((global.ammo_per_gun[global.inventory_selected]>0)or(global.inventory_selected=0)){if global.inventory_selected>0{global.ammo_per_gun[global.inventory_selected]-=1} global.slot_ammo[global.inventory_selected]=100}
            reloading=0 

            if global.gun=13{audio_play_sound(snd_recharge,1,0)}else{if global.gun=19{}else{audio_play_sound(snd_reload,1,0)}}
            }
        }
        else
        {
        reload_timer=0
        reloading=0
        }
    }
