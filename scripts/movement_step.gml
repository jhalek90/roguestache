
if on_solid_ground=1 {dash_amount=0}
if walk=0{x_speed=x_speed*0.75}else{x_speed=x_speed}
//y_speed+=1
if global.perk2=2{if on_solid_ground=0{y_speed+=0.3}else{if place_meeting(x,y+1,wall)=false{on_solid_ground=0}} }
else{if on_solid_ground=0{y_speed+=0.40}else{if place_meeting(x,y+1,wall)=false{on_solid_ground=0}}}

if on_solid_ground=0{if doubble_jump=0 {doubble_jump=1}}

perk_mod=1
if global.perk1=9{perk_mod=1.1}
if global.perk1=10{perk_mod=1.15}
if global.perk1=11{perk_mod=1.2}

//if global.hat=3{perk_mod-=0.25}
if global.rage_on=1
    {
    if has_stache_perk(0){perk_mod+=1}
    }


if has_stache_perk(10)
{
perk_mod=perk_mod*1.15
}

if speed_dash<0
{


if x_speed>max_x_speed*perk_mod{x_speed=max_x_speed*perk_mod}
if x_speed<-max_x_speed*perk_mod{x_speed=-max_x_speed*perk_mod}
if y_speed>max_y_speed{y_speed=max_y_speed}
if y_speed<-max_y_speed{y_speed=-max_y_speed}
}
else
{
instance_create(x,y,dust)
}

if slide=1{if y_speed>2{y_speed=2} if random(10)>7{immersion_play_effect(8)}}

if place_meeting(x,y+y_speed,wall)=false{y+=y_speed}else
{
if y_speed>0{do{if place_meeting(x,y+1,wall){hit=1} if hit=0{y+=1} i+=1}until(((i>max_y_speed)or(hit=1)))}

if place_meeting(x,y+1,wall){with(instance_place(x,y+1,wall)){event_user(0)} on_solid_ground=1 dash_amount=0 doubble_jump=0 if y_speed>5{if landed<0{global.view_shake+=1 landed=5 audio_play_sound(snd_land2,1,0) immersion_play_effect(9)}}}
y_speed=0
}
////////////////////////////////////////////////////////////////////////
if place_meeting(x+x_speed,y,wall)=false
{
on_slope=0
if place_meeting(x,y+1,wall){on_slope=1}
x+=x_speed
i=0
hit=0
if on_slope=1{if place_meeting(x,y+1,wall)=false{do{if place_meeting(x,y+1,wall){hit=1} if hit=0{y+=1} i+=1}until(((i>max_y_speed)or(hit=1)))}}
}
else
{
i=0
hit=0
do{if place_meeting(x+x_speed,y-i,wall){hit=1}else{hit=5} i+=1}until(((i>max_y_speed)or(hit=5))) 
if hit=5{y-=i x+=x_speed}
else
{
i=0
hit=0
if x_speed<0{do{if place_meeting(x-1,y,wall){hit=1} if hit=0{x-=1} i+=1}until(((i>-max_x_speed)or(hit=1)))}
if x_speed>0{do{if place_meeting(x+1,y,wall){hit=1} if hit=0{x+=1} i+=1}until(((i>max_x_speed)or(hit=1)))}
x_speed=0
}
if place_meeting(x,y+2,wall){on_solid_ground=1 doubble_jump=0}
}

if place_meeting(x,y+2,wall){on_solid_ground=1 doubble_jump=0}


//if on_solid_ground=1
//{
//walk_timer+=abs(x_speed)
//if walk_timer>40{walk_timer=0 audio_play_sound(choose(snd_step,snd_step2,snd_step3),1,0)}
//}
