//hurt_me(amount)

if room=room_level_safezone{exit}
if room=room_level_afterboss{exit}
if room=room_level_preboss{exit}
if room=room_level_tut{exit}

if global.rage_on=1
{
if has_stache_perk(2){exit}
}

if can_be_hurt<0
{

view_xview[0]+=-4+random(8)+lengthdir_x(-4,random(360))
view_yview[0]+=-4+random(8)+lengthdir_y(-4,random(360))


audio_play_sound(choose(snd_grunt1,snd_grunt2,snd_grunt3,snd_grunt5,snd_grunt6,snd_grunt7,snd_grunt8,snd_grunt9,snd_grunt10),10,0)
mouth=30
global.blood_alpha=1
global.blood_image=choose(0,1,2,3,4)
if random(10)>5{mouth=random(30)+15} 
//if global.hat=3{global.life-=(((argument0)/global.defense)*0.5)}
//else
//{

perk_mod=1
if global.perk1=0 {perk_mod=0.9}
if global.perk1=2 {perk_mod=0.85}
if global.perk1=3 {perk_mod=0.8}

perk_mod=perk_mod*global.beard_def_buff
//if global.hat=1{perk_mod+=0.4}
//if global.hat=2{perk_mod+=0.4}
//if global.hat=3{perk_mod-=0.25}
if has_stache_perk(7){perk_mod=perk_mod*0.8}

perk_mod=(perk_mod*(global.loops+1))

global.life-=(((argument0)/global.defense)*perk_mod)*1.3 //modify total player life buff here
//}

life=global.life
landed=10 
pain=1
audio_play_sound(choose(snd_flesh1,snd_flesh2,snd_flesh3,snd_flesh4,snd_flesh5,snd_flesh6,snd_flesh7),1,0)
can_be_hurt=30

if global.perk2=8
{
global.pow=argument0/20
    with(enemy_parent){if point_distance(x,y,player.x,player.y)<64{event_user(1)}}
}

}
