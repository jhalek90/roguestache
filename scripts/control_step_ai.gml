change_timer-=1


// Brains
if change_timer<0{if random(100>99){global.gun=choose(0,1,2,3,4,5,6,7,8,9,10,11,12,16) gun_setup() change_timer=90}}
if random(100)>80{target_x=64+(random(room_width-128))}
if ((random(100)>95)and(target_x>x)){hold_right=choose(1,0) hold_left=0}
hold_jump=0
if random(100)>96{hold_jump=choose(1,0)}
if ((random(100)>95)and(target_x<x)){hold_right=0 hold_left=choose(1,0)}


global.bullet_type=4


if instance_exists(enemy_parent)
{
aim_dir=point_direction(x,y,instance_nearest(x,y,enemy_parent).x,instance_nearest(x,y,enemy_parent).y)+swing+aim_recoil
if random(100)>90{shoot_gun1()}
}




if hold_left{x_speed-=0.3 spr=s_run image_single=-1 image_speed=0.5 walk=1 face=-1 }
if hold_right{x_speed+=0.3 spr=s_run image_single=-1  image_speed=0.5 walk=1 face=1}
if hold_jump
{
perk_mod=1

global.jump_pressed=0
if doubble_jump=0
{
if on_solid_ground=1{doubble_jump=1 y_speed=-((7+min(abs(x_speed/2),max_x_speed))*perk_mod) if random(10)>5{mouth=random(30)+15} audio_play_sound(snd_jump,1,0) repeat(15){instance_create(x,y+12,dust)}   }
else{if slide=1{doubble_jump=1 audio_play_sound(snd_kick2,1,0) repeat(15){instance_create(x+(12*face),y+12,dust)} if random(10)>5{mouth=random(30)+15} if face=1{y_speed=-6*perk_mod x_speed=-12} if face=-1{y_speed=-6*perk_mod x_speed=12 face=1}else{face=-1}}}
}
else{

if doubble_jump=1{doubble_jump=2 flip=-360*face y_speed=-8*perk_mod if random(10)>5{mouth=random(30)+15}audio_play_sound(snd_jump,1,0) repeat(15){instance_create(x,y+12,dust)}}
else{if global.perk2=1{if doubble_jump=2{doubble_jump=3 flip=-360*face y_speed=-8*perk_mod if random(10)>5{mouth=random(30)+15}audio_play_sound(snd_jump,1,0) repeat(15){instance_create(x,y+12,dust)}}}}

}
}

