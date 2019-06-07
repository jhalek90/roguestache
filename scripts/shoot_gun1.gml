minus=1
if global.hat=5{minus=2}
if instance_exists(areyousure){exit}
if dummy_object=0{if shot_timer>0{exit}}

Fixed_Shot_Distance=16
bdist=Fixed_Shot_Distance//8//40


if ((global.ammo_per_gun[global.inventory_selected]=0)and(global.slot_ammo[global.inventory_selected]=0)and(global.inventory_selected != 0))
{
global.inventory_item[global.inventory_selected]=99
global.gun=global.inventory_item[0]
global.inventory_selected=0
shot_timer=30
gun_setup()
}



if global.slot_ammo[global.inventory_selected]<1
{
if global.gun=13{audio_play_sound(snd_downchjarge,1,0)}else{audio_play_sound(snd_trigger,1,0)}
shot_timer=30
}

if instance_exists(pick_a_perk){exit}

if global.gun=0 //pistol
{
if ((tap=0)or(global.rage_on=1))
{
tap=1

if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
bdist=Fixed_Shot_Distance//8
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=(global.ammo_cost/minus)*2}}//pistol now has 6 rounds
if room != room_title{global.stats_shots+=1}
audio_play_sound(snd_shoot1,1,0)
play_rumble_effect(timeline_vibrate_thump)
if global.perk3=9
    {
    l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),railgun_bullet2)
    l.direction=aim_dir
    l.max_hits=1
    l.image_blend=c_fuchsia
    l.image_blend2=c_white
    l.pow=2
    }
    else
    {
    //l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),railgun_bullet2)
    //l.direction=aim_dir
    //l.pow=2
    //l.max_hits=0
    //l.image_blend=c_fuchsia
    //l.image_blend2=c_white
    make_bullet(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),aim_dir,25)
    }

//aim_recoil+=(random(10)+5)*face
shot_timer=global.shot_delay-3
if global.rage_on=0
{
x_speed-=lengthdir_x(1,aim_dir)
y_speed-=lengthdir_y(1,aim_dir)
}

if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}

}
}
}

if global.gun=1//shotgun
{
if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=((global.ammo_cost*1.5)/minus)}}
audio_play_sound(snd_shotgun,1,0)
do_rumble(30,0.5)
if room != room_title{global.stats_shots+=1}
make_bullet(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),aim_dir,27+random(5))
make_bullet(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),aim_dir-12,27+random(5))
make_bullet(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),aim_dir+12,27+random(5))
//aim_recoil+=(random(20)+15)*face
shot_timer=global.shot_delay+10
if global.rage_on=0
{
x_speed-=lengthdir_x(5,aim_dir)
y_speed-=lengthdir_y(5,aim_dir)
}
reload_timer=-30
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=2//smg
{
if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
bdist=Fixed_Shot_Distance//8
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=((global.ammo_cost-2)/minus)/2}}
audio_play_sound(snd_smg2,1,0)
do_rumble(10,1)
if room != room_title{global.stats_shots+=1}
make_bullet(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),aim_dir-7+random(14),27+random(5))
//aim_recoil+=(random(10)+5)*face
shot_timer=global.shot_delay-3
if global.rage_on=0
{
x_speed-=lengthdir_x(0.5,aim_dir)
y_speed-=lengthdir_y(0.5,aim_dir)
}
reload_timer=10
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=3//rocket
{
if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=((global.ammo_cost+45)/minus)}}
audio_play_sound(snd_rocket,1,0)
if room != room_title{global.stats_shots+=1}
play_rumble_effect(timeline_vibrate_down_fast)
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),rocket)
l.direction=aim_dir
l.image_angle=aim_dir
l.pow=10
l.speed=20
shot_timer=global.shot_delay+25
x_speed-=lengthdir_x(10,aim_dir)
y_speed-=lengthdir_y(10,aim_dir)
reload_timer=-60
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=4//ar
{

if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=((4.75)/minus)}}
audio_play_sound(snd_smg3,1,0)
do_rumble(20,0.25)
if room != room_title{global.stats_shots+=1}
make_bullet(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),aim_dir-7+random(14),27+random(5))


if burst=0
{
alarm[0]=5
burst=1
}
shot_timer=15
//aim_recoil+=(random(15)+10)*face
l.image_blend=c_yellow
l2.image_blend=c_orange

if global.rage_on=0
{
x_speed-=lengthdir_x(1,aim_dir)
y_speed-=lengthdir_y(1,aim_dir)
}
reload_timer=0
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}

}

if global.gun=5//railgun
{
if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=(((global.ammo_cost+45))/minus)/2}}
audio_play_sound(snd_railgun,1,0)
do_rumble(30,1)
if room != room_title{global.stats_shots+=1}
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),railgun_bullet)
l.direction=aim_dir
shot_timer=global.shot_delay+25
x_speed-=lengthdir_x(10,aim_dir)
y_speed-=lengthdir_y(10,aim_dir)
reload_timer=-60
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=6 //flames
{
if global.slot_ammo[global.inventory_selected]>0
{
do_rumble(5,0.25)
do_view_shake(8)
if firetime=0{audio_play_sound(snd_fire1,1,0) firetime=5}else{firetime-=1}
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=(1/minus)}}
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),fire)
l.direction=aim_dir-5+random(10)
l.speed=5
shot_timer=1
if on_solid_ground=0
    {
    x_speed-=lengthdir_x(0.35,aim_dir)
    y_speed-=lengthdir_y(0.35,aim_dir)
    }

reload_timer=-90
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}




if global.gun=7 //heavy machine gun
{
if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=((global.ammo_cost-1)/3)/minus}}
audio_play_sound(snd_hmg,1,0)
do_rumble(5,1)
if room != room_title{global.stats_shots+=1}
make_bullet(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),aim_dir-15+random(30),27+random(5))
//aim_recoil+=(random(20)+15)*face
shot_timer=5
if global.rage_on=0
{
x_speed-=lengthdir_x(1,aim_dir)
y_speed-=lengthdir_y(1,aim_dir)
}
reload_timer=-60
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=8 //atom gun
{
if global.slot_ammo[global.inventory_selected]>0
{
play_rumble_effect(timeline_vibrate_up_fast)
do_view_shake(8)
bdist=Fixed_Shot_Distance//8
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=(global.ammo_cost/minus)}}
audio_play_sound(snd_shoot1,1,0)
if room != room_title{global.stats_shots+=1}
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),atomic_laser)
if instance_exists(l)
{
l.dir=aim_dir
l.image_angle=aim_dir
l.pow=2
l.image_blend=c_lime
l.sped=30
}
shot_timer=global.shot_delay
x_speed-=lengthdir_x(1,aim_dir)
y_speed-=lengthdir_y(1,aim_dir)
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=9//rocket 2
{
if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=(global.ammo_cost+45)/minus}}
audio_play_sound(snd_rocket,1,0)
play_rumble_effect(timeline_vibrate_down_fast)
if room != room_title{global.stats_shots+=1}
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),homing_rocket)
l.direction=aim_dir
l.image_angle=aim_dir
l.pow=10
l.speed=10
shot_timer=global.shot_delay+25
x_speed-=lengthdir_x(10,aim_dir)
y_speed-=lengthdir_y(10,aim_dir)
reload_timer=-60
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=10//grenade
{
if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
bdist=Fixed_Shot_Distance//8
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=101}}
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),grenade)
l.direction=aim_dir
l.image_angle=aim_dir
l.pow=10
l.speed=10
shot_timer=global.shot_delay+25
reload_timer=-60
swing=-45*face
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=11//railgun 2
{
if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=((global.ammo_cost/minus)+45)}}
audio_play_sound(snd_laser,1,0)
do_rumble(10,0.5)
if room != room_title{global.stats_shots+=1}
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),railgun_bullet2)
l.direction=aim_dir
shot_timer=global.shot_delay+25
x_speed-=lengthdir_x(10,aim_dir)
y_speed-=lengthdir_y(10,aim_dir)
reload_timer=-60
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}


if global.gun=12 //electric pistol
{
if global.slot_ammo[global.inventory_selected]>0
{
do_rumble(5,0.3)
do_view_shake(8)
bdist=Fixed_Shot_Distance//8
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=13/minus}}
audio_play_sound(snd_electric,1,0)
if room != room_title{global.stats_shots+=1}
repeat(choose(2,3,4,5))
{
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),electricity)
l.direction=aim_dir
}
shot_timer=15
x_speed-=lengthdir_x(1,aim_dir)
y_speed-=lengthdir_y(1,aim_dir)
reload_timer=-30
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=13 //sword
{
if global.slot_ammo[global.inventory_selected]>0
{
//if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=25/minus}}
audio_play_sound(snd_saber,1,0)
if swing<0{swing=360}else{swing=-360}
instance_create(x,y,saber_mask)
swing=360*face//remove to change to default back and forth 
shot_timer=15
dash=10
reload_timer=-10
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}


if global.gun=14//water pistol
{
if global.slot_ammo[global.inventory_selected]>0
{
bdist=Fixed_Shot_Distance//8
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=2/minus}}
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),water)
if random(10)>4
{
audio_sound_pitch(snd_acid,0.75+random(0.5))
audio_play_sound(snd_acid,1,0)
}
l.x_speed=lengthdir_x(20,aim_dir)
l.y_speed=lengthdir_y(20,aim_dir)
shot_timer=-1
reload_timer=-30
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=15//rocket 3
{
if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=100/minus}}
audio_play_sound(snd_rocket,1,0)
play_rumble_effect(timeline_vibrate_down_fast)
if room != room_title{global.stats_shots+=1}
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),super_rocket)
//aim_recoil+=(random(80)+60)*face
l.dir=aim_dir
l.image_angle=aim_dir
l.pow=1
l.sped=50
shot_timer=global.shot_delay+25
x_speed-=lengthdir_x(10,aim_dir)
y_speed-=lengthdir_y(10,aim_dir)
reload_timer=-60
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=16 //wifi
{
if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
bdist=Fixed_Shot_Distance//8
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=(15/minus)/2}}//ammo buff
audio_play_sound(snd_pew,1,0)
if room != room_title{global.stats_shots+=1}
do_rumble(15,0.3)
i=-10

perk_mod=1
pierce=0
if global.perk1=3 {perk_mod=1.1}
if global.perk1=4 {perk_mod=1.15}
if global.perk1=5 {perk_mod=1.2}
if global.perk3=2{if global.gun=0{pierce=1}}

if ((global.stache_perk1=9)or(global.stache_perk2=9)or(global.stache_perk3=9))
{
perk_mod=perk_mod*1.15
}


perk_mod=(perk_mod+((global.xp_level-1)*0.1))*global.beard_atk_buff



repeat(5)
{
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),laser)
l.dir=aim_dir+i
l.image_angle=aim_dir+i
l.pow=0.5*perk_mod
l.image_blend=c_lime
l.alarm[0]=30
l.sped=10
l.pierce=1
l.nosound=1
i+=4

}
shot_timer=global.shot_delay
x_speed-=lengthdir_x(1,aim_dir)
y_speed-=lengthdir_y(1,aim_dir)
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}
}
}

if global.gun=17 //revolver
{
if global.slot_ammo[global.inventory_selected]>0
{
do_rumble(15,1)
do_view_shake(8)
bdist=Fixed_Shot_Distance//8
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=(20/minus)}}
audio_play_sound(snd_revolver,1,0)
if room != room_title{global.stats_shots+=1}
make_bullet(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),aim_dir,30)
l.pow=5
//aim_recoil+=(random(60)+30)*face
shot_timer=30
if global.rage_on=0
{
x_speed-=lengthdir_x(3,aim_dir)
y_speed-=lengthdir_y(3,aim_dir)
}
else
{
shot_timer=5
}
reload_timer=-90
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}

}
}

if global.gun=18 //axe
{
if global.slot_ammo[global.inventory_selected]>0
{
bdist=Fixed_Shot_Distance//8
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=10}}
audio_play_sound(snd_boss_toss,1,0)
l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),throwing_axe)
l.image_xscale=face
l.direction=aim_dir
l.speed=10
l.pow=5
//aim_recoil-=(random(60)+30)*face
shot_timer=10
x_speed-=lengthdir_x(3,aim_dir)
y_speed-=lengthdir_y(3,aim_dir)
reload_timer=30
if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}

}
}



if global.gun=90//kittycannon
{
if ((tap=0)or(global.rage_on=1))
{
tap=1

if global.slot_ammo[global.inventory_selected]>0
{
do_view_shake(8)
bdist=Fixed_Shot_Distance//8
if global.rage_on=0{if dummy_object=0{global.slot_ammo[global.inventory_selected]-=(global.ammo_cost/minus)}}

audio_sound_pitch(snd_mew,random(0.25)+.75)
audio_play_sound(snd_mew,1,0)
if room != room_title{global.stats_shots+=1}
play_rumble_effect(timeline_vibrate_thump)
if global.perk3=9
    {
    l=instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),railgun_bullet2)
    l.direction=aim_dir
    l.max_hits=1
    l.image_blend=c_fuchsia
    l.image_blend2=c_white
    }
    else
    {
    make_bullet(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),aim_dir,25)
    }

//aim_recoil+=(random(10)+5)*face
shot_timer=global.shot_delay-3
if global.rage_on=0
{
x_speed-=lengthdir_x(1,aim_dir)
y_speed-=lengthdir_y(1,aim_dir)
}

if dummy_object=0
{
if global.hosting=1{with(server){event_user(0)}}
if global.hosting=0{with(client){event_user(0)}}
}

}
}
}







if global.gun=96//wax
{

if dummy_object=0
{
global.rage=100
global.gun=global.inventory_item[0]
global.inventory_item[global.inventory_selected]=99
global.inventory_selected=0
shot_timer=30
gun_setup()
}

}

if global.gun=97 //key
{
if place_meeting(x+(8*face),y,weapon_crate)
{
if dummy_object=0
{
global.gun=global.inventory_item[0]
global.inventory_item[global.inventory_selected]=99
global.inventory_selected=0
shot_timer=30
gun_setup()

with(instance_place(x+(8*face),y,weapon_crate)){event_user(3)}
}
}
}

if global.gun=98 //heart
{

if dummy_object=0
{
global.life=100
global.usedaheart=1
powerup=60
powerup2=60
global.gun=global.inventory_item[0]
global.inventory_item[global.inventory_selected]=99
global.inventory_selected=0
shot_timer=30
gun_setup()
}

}


/*
global.bullet_type=1
global.shot_delay=15
(global.ammo_cost/minus)=10
