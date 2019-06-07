
if mouth>0{
if random(100)>50{hat_spin=10*face}
}
hat_spin+=(-hat_spin/5)
//s_stand=spr_stand_no_arm
//s_run=spr_run_no_arm
if walk=0{spr=s_stand image_single=0}

if on_solid_ground=0
{
spr=s_stand 
image_single=2
if y_speed<-1{image_single=3}
if y_speed>1{image_single=2}
}


else
{
if shot_timer<-5
{
if face=1{if x_speed<-0.5{spr=s_stand image_single=1 instance_create(x-(12*face),y+12,dust)}}//slipping
if face=-1{if x_speed>0.5{spr=s_stand image_single=1 instance_create(x-(12*face),y+12,dust)}}//slipping
}
}

if landed>0
{
spr=s_stand image_single=5
if pain=1{image_single=8}
}
