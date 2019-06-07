if global.rage_on=1
{
if global.stache_perk1=2{exit}
if global.stache_perk2=2{exit}
if global.stache_perk3=2{exit}
}
//if global.rage_on=1{exit}

if place_meeting(x,y+y_speed,body)
{

target=instance_place(x,y+y_speed,body)

if place_meeting(x,y+y_speed,chicken)>0{exit}


if instance_position(x,y+y_speed,giant_eye)>0
{
if can_be_hurt<0{repeat(5){i=instance_create(x+((x-target.x)/2),y+((y-target.y)/2),blood_jet)}}
if place_meeting(x,y+y_speed,chicken)>0{exit}
hurt_me(10)
exit
}

if y<target.y-10
{
with(target){event_user(2)}
if global.hat=6 {repeat(5){with(target){event_user(2)}} audio_play_sound(snd_punch,1,0)}
else{audio_play_sound(snd_punch,1,0)}
y_speed=-5

}
else
{
if can_be_hurt<0{repeat(5){i=instance_create(x+((x-target.x)/2),y+((y-target.y)/2),blood_jet)}}
if place_meeting(x,y+y_speed,chicken)>0{exit}
hurt_me(10)

}
}

if landed<0{pain=0}
