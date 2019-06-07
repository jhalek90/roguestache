if shot_timer>0{exit}

if global.gun=5
{
if global.ammo>9
{
global.ammo-=10
audio_play_sound(snd_shoot1,1,0)
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir
l.image_blend=c_orange
l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser_hit)
l.image_angle=aim_dir+180
l.image_blend=c_orange

shot_timer=10
}
}

if global.gun=6
{
if global.ammo>9
{
global.ammo-=10
audio_play_sound(snd_shoot1,1,0)
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir
l.image_blend=c_orange
l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser_hit)
l.image_angle=aim_dir+180
l.image_blend=c_orange
shot_timer=5
}
}


if global.gun=7
{
if global.ammo>9
{
global.ammo-=10
audio_play_sound(snd_shoot1,1,0)

l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir
l.image_blend=c_orange l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir-7 
l.image_blend=c_orange l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir+7
l.image_blend=c_orange l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser_hit)
l.image_angle=aim_dir+180
l.image_blend=c_orange
shot_timer=15
}
}

if global.gun=8
{
if global.ammo>9
{
global.ammo-=10
audio_play_sound(snd_shoot1,1,0)

l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir
l.image_blend=c_orange l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir-7
l.image_blend=c_orange l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir+7
l.image_blend=c_orange l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser_hit)
l.image_angle=aim_dir+180
l.image_blend=c_orange
shot_timer=10
}
}

if global.gun=9
{
if global.ammo>9
{
global.ammo-=10
audio_play_sound(snd_shoot1,1,0)

l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir
l.image_blend=c_orange l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir-7
l.image_blend=c_orange l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir+7
l.image_blend=c_orange l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir-3
l.sped=15
l.image_blend=c_orange l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser)
l.dir=aim_dir+3
l.sped=15
l.image_blend=c_orange l.pow=3
l=instance_create(x+gun_x+lengthdir_x(32,aim_dir),y+gun_y+lengthdir_y(32,aim_dir),laser_hit)
l.image_angle=aim_dir+180
l.image_blend=c_orange
shot_timer=15
}
}
