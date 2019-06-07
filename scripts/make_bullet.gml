
if random(10)>5
{
mouth=choose(10,15,20)
//if random(10)>5{eyes=300}
}




perk_mod=1
pierce=0
if global.perk1=3 {perk_mod=1.1}
if global.perk1=4 {perk_mod=1.15}
if global.perk1=5 {perk_mod=1.2}
if global.perk3=2{if global.gun=0{pierce=1}}

if has_stache_perk(9)
{
perk_mod=perk_mod*1.15
}


perk_mod=(perk_mod+((global.xp_level-1)*0.1))*global.beard_atk_buff



l=instance_create(argument0,argument1,laser)
l.dir=argument2
l.pierce=pierce
l2=instance_create(argument0+lengthdir_x(bdist,aim_dir),argument1+lengthdir_y(bdist,aim_dir),laser_hit)
l2.image_angle=argument2+180
l.sped=(argument3/1.5)//bullet speed nerf

if global.bullet_type=1
{
 l.image_yscale=0.5
l.image_xscale=1
l.pow=2*perk_mod
if global.gun=2{l.pow=1}
l.image_blend=c_fuchsia
l2.image_blend=c_fuchsia
}

if global.bullet_type=2
{
l.image_yscale=0.75
l.image_xscale=1
if global.has_joy=1{do_rumble(10,0.35)}
l.pow=2*perk_mod
if global.gun=2{l.pow=1.5}
l.image_blend=c_aqua
l2.image_blend=c_aqua

}

if global.bullet_type=3
{
l.image_yscale=1
l.image_xscale=1
if global.has_joy=1{do_rumble(10,0.5)}
l.pow=2*perk_mod
if global.gun=2{l.pow=2}
if global.gun=2{l.pow=2}
l.image_blend=c_orange
l2.image_blend=c_orange

}

if global.bullet_type=4
{
if global.has_joy=1{do_rumble(10,75)}
l.pow=2*perk_mod
if global.gun=2{l.pow=2.5}
l.image_blend=c_lime
l2.image_blend=c_lime

}


if global.bullet_type=5
{
l.image_yscale=1
l.image_xscale=1
if global.has_joy=1{do_rumble(10,1)}
l.pow=2*perk_mod
if global.gun=2{l.pow=2.5}
l.image_blend=c_red
l2.image_blend=c_red

}



if global.rage_on=1
{
l.image_yscale=1
l.image_xscale=1
if global.has_joy=1{do_rumble(10,1)}
l.pow=2*perk_mod
if global.gun=2{l.pow=2.5}
l.image_blend=c_red
l2.image_blend=c_red

}

if global.gun=0
{
l.image_yscale=0.5
l.image_xscale=1
}
if global.gun=0{l.pow=2*perk_mod}

if global.gun=1{l.alarm[0]=20}
//if global.gun=2{l.pow=l.pow/2} //smg nerf
if global.gun=17{ l.pow=l.pow*2 l.image_xscale=2 l.image_yscale=2 l.pierce=1 if global.has_joy=1{do_rumble(20,1)}}//revolver boost

if global.gun=90{ l.image_blend=c_lime if global.has_joy=1{do_rumble(20,1)}}//mew mew mew
