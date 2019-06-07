

if ((keyboard_check_pressed(ord('F')))or(global.drop_pressed))
{
drop_held_item()
}
if ((keyboard_check_pressed(ord('R')))or(global.reload_pressed))
{
reload_ammo()
}

if ((keyboard_check_pressed(ord('E')))or(global.reload_pressed))
{
reload_ammo()
check_interact()
}

if global.item_pressed{cycle_inv(1)}

if global.cycle_left_pressed{cycle_inv(-1)}
if global.cycle_right_pressed{cycle_inv(1)}



//if joystick_check_button(0,4){if global.ammo>0{global.ammo=0} do_i_have_key()}
mouse_aiming()

if ((global.gun=0)and(global.rage_on=0))
{
if ((global.shoot_tapped=1)or(mouse_check_button_pressed(mb_left))) {shoot_gun1()}
}
else
{
if ((global.shoot_pressed)or(mouse_check_button(mb_left))){shoot_gun1()}
}



if ((mouse_check_button_pressed(mb_right))or(global.melee_pressed))
    {
    if melee_timer<0
        {
        audio_play_sound(snd_melee,1,0)
        melee_timer=30
        bdist=8
        if global.perk2=3{make_bullet2(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),aim_dir,16)}
        else{make_bullet2(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),aim_dir,8)}
        instance_create(x+gun_x+lengthdir_x(bdist,aim_dir),y+gun_y+lengthdir_y(bdist,aim_dir),pusher)
        
        /*   /360 knife disabled 
        if speed_dash>0
        {
        ddd=aim_dir+(360/8)
        repeat(7)
        {
        make_bullet2(x+gun_x+lengthdir_x(bdist,ddd),y+gun_y+lengthdir_y(bdist,ddd),ddd,8)
        ddd+=(360/8)
        }
        }
        */
        }
    }

if dash_amount=0
{
if keyboard_check_pressed(ord('A'))
{

if tap_left>0
{
can_be_hurt=20
x_speed=-12
speed_dash=5
dash_amount=1
if global.perk2=0 {speed_dash=10}
}
else
{
tap_left=15
tap_right=0
}
}

if keyboard_check_pressed(ord('D'))
{
if tap_right>0
{
can_be_hurt=20
x_speed=12
speed_dash=5
dash_amount=1 // this limits the amount of dashes in air
if global.perk2=0 {speed_dash=10}
}
else
{
tap_right=15
tap_left=0
}
}



if global.joy_dash_left=1
{
can_be_hurt=20
x_speed=-12
speed_dash=5
dash_amount=1
if global.perk2=0 {speed_dash=10}
}

if global.joy_dash_right=1
{
can_be_hurt=20
x_speed=12
speed_dash=5
dash_amount=1 // this limits the amount of dashes in air
if global.perk2=0 {speed_dash=10}
}





}

if keyboard_check_pressed(ord('S'))
{
if tap_right>0
{
speed_dash=5
}
else
{
tap_right=15
tap_left=0
}
}



if ((global.left_pressed)or(keyboard_check(global.left_key))){x_speed-=0.5*global.boost spr=s_run image_single=-1 image_speed=0.5 walk=1 face=-1 }
if ((global.right_pressed)or(keyboard_check(global.right_key))){x_speed+=0.5*global.boost spr=s_run image_single=-1  image_speed=0.5 walk=1 face=1}
if ((global.jump_pressed)or(keyboard_check_pressed(global.jump_key))or(keyboard_check_pressed(global.jump_key2)))
{
perk_mod=1
if global.perk2=4{perk_mod=1.25}

global.jump_pressed=0
//if global.perk2=1{doubble_jump=1}
//doubble_jump=1}

if doubble_jump=0
{
if on_solid_ground=1{doubble_jump=1 y_speed=-((7+min(abs(x_speed/2),max_x_speed))*perk_mod) if random(10)>5{mouth=random(30)+15} audio_play_sound(snd_jump,1,0) repeat(15){instance_create(x,y+12,dust)}   }
else{if slide=1{doubble_jump=1 audio_play_sound(snd_kick2,1,0) repeat(15){instance_create(x+(12*face),y+12,dust)} if random(10)>5{mouth=random(30)+15} if face=1{y_speed=-6*perk_mod x_speed=-12} if face=-1{y_speed=-6*perk_mod x_speed=12 face=1}else{face=-1}}}
}
else{

if global.rage_on=1
    {
    if has_stache_perk(5){doubble_jump=1}
    }

if doubble_jump=1{doubble_jump=2 flip=-360*face y_speed=-8*perk_mod if random(10)>5{mouth=random(30)+15}audio_play_sound(snd_jump,1,0) repeat(15){instance_create(x,y+12,dust)}}
else{if global.perk2=1{if doubble_jump=2{doubble_jump=3 flip=-360*face y_speed=-8*perk_mod if random(10)>5{mouth=random(30)+15}audio_play_sound(snd_jump,1,0) repeat(15){instance_create(x,y+12,dust)}}}}

}
}
if ((global.jump_released=1)or(keyboard_check_released(ord('Z')))){global.jump_released=0 if y_speed<0{y_speed=y_speed/2}}

//if x_speed>0{if face=-1{face=1}}
//if x_speed<0{if face=1{face=-1}}
