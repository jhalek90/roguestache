
if random(100)<98{exit}
if instance_exists(player)=false{exit}
if instance_number(enemy_parent)<global.max_enemies
{

do
{
dir=random(360)
dis=300+random(128)
xx=player.x+lengthdir_x(dis,dir)
yy=player.y+lengthdir_y(dis,dir)
}
until((xx>544)and(xx<1680)and(yy>352)and(yy<736))

if place_meeting(xx,yy,wall)=false
{
instance_create(xx,yy,choose(enemy,enemy2,spider,eye_slime,giant_eye))
global.max_enemies+=1
}

}

/*
544-1680
352-736
