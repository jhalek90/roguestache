f_to_drop=0
cant_drop_pistol=0
gun_shot_img=0
dash_amount=0
my_surf=surface_create(128,128)
surface_set_target(my_surf)
draw_clear_alpha(c_black,0)
surface_reset_target()

global.speed_boost=-1
spr_gun=sprite_index
hat_spin=0
speed_dash=0
tap_left=0
tap_right=0
eyes=0
mouth=0
powerup=0
life=global.life
aim_dir=0
pain=0
target=0
slide=0
punch=0
x_speed=0
y_speed=0
on_solid_ground=0
dash=0
i=0
max_x_speed=5+global.speed_boost
max_x_speed=max_x_speed*global.beard_speed_buff
max_y_speed=20
hit=0
on_slope=0
face=1
image_single=0
walk=0
landed=0


s_stand=spr_stand_no_arm
s_run=spr_run_no_arm
spr_arm=spr_arm_color

if global.hat=1
    {
    s_stand=spr_gent_stand
    s_run=spr_gent_run
    spr_arm=spr_gent_arm
    }

if global.hat=2
    {
    s_stand=spr_fu_stand
    s_run=spr_fu_run
    spr_arm=spr_fu_arm
    }

if global.hat=3
    {
    s_stand=spr_full_stand
    s_run=spr_full_run
    spr_arm=spr_full_arm
    }

if global.class=2
{
s_stand=spr_faster_stand
s_run=spr_faster_run
spr_arm=spr_arm2
}

if global.class=3
{
s_stand=spr_heavy_stand
s_run=spr_heavy_run
spr_arm=spr_arm3
}





spr=s_stand
aim="right"
human=1
if global.knows_how_to_play=0
{
//m=instance_create(x,y-48,tut)
//m.master=id
global.knows_how_to_play=1
}
can_be_hurt=0
my_alpha=1

gun_x=x
gun_y=y

doubble_jump=0
flip=0
level_up=0

gun_setup()
