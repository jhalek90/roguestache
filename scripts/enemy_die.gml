
if fake_death=1 {exit}


if room != room_title{global.stats_kills+=1}


repeat(10)
    {
        i=instance_create(x,y,blood_jet)
        i.sprite_index=spr_splat_big
    }


if instance_exists(player)
    {
    if global.perk2=9
        {
            if random(10)>95{global.life+=10 player.life+=10 if global.life<100{global.life=100 player.life=100}}
        }
        
        if global.perk3=10
        {
            if random(10)>95{global.slot_ammo[global.inventory_selected]=100 global.ammo=100}
        }
    }


repeat(40)
{
i=instance_create(x,y,chunk)
}


if instance_exists(player)
    {
    if random(100)>95
        {
        player.mouth=30
        audio_play_sound(choose(snd_power1,snd_power2,snd_power3),1,0)
        }
    }
global.total_kills+=1
global.lifetime_kills+=1

if drone_target=0{if global.rage_on=0{global.rage+=6}}



if room != room_title
    {
    if random(10)>9
        {
        if nope=0{repeat(random(2)+3){i=instance_create(x,y,xp_orb)}}
        }
        if nope=0{repeat(random(5)+5){i=instance_create(x,y,xp_orb)}}
        
        if stached>0
            {
            repeat(random(5)+5){i=instance_create(x,y,xp_orb)}
            repeat(random(5)+5){i=instance_create(x,y,credit)}
            }
    
    }

//repeat(random(5)+5){i=instance_create(x,y,chunk)}

