
global.enemy_type[0]=choose("metroid","crawler","spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
do
    {
    global.enemy_type[1]=choose("metroid","crawler","spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
    }until(global.enemy_type[1]!=global.enemy_type[0])
    
do
    {
    global.enemy_type[2]=choose("metroid","crawler","spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
    }until((global.enemy_type[2]!=global.enemy_type[1])and(global.enemy_type[2]!=global.enemy_type[0]))
    
do
    {
    global.enemy_type[3]=choose("metroid","crawler","spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
    }until((global.enemy_type[3]!=global.enemy_type[2])and(global.enemy_type[3]!=global.enemy_type[1])and(global.enemy_type[3]!=global.enemy_type[0]))
    
    
    
if global.loops>1
{
global.enemy_type[0]=choose("green metroid","crawler","green spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
do
    {
    global.enemy_type[1]=choose("green metroid","crawler","green spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
    }until(global.enemy_type[1]!=global.enemy_type[0])
    
do
    {
    global.enemy_type[2]=choose("green metroid","crawler","green spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
    }until((global.enemy_type[2]!=global.enemy_type[1])and(global.enemy_type[2]!=global.enemy_type[0]))
    
do
    {
    global.enemy_type[3]=choose("green metroid","crawler","green spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
    }until((global.enemy_type[3]!=global.enemy_type[2])and(global.enemy_type[3]!=global.enemy_type[1])and(global.enemy_type[3]!=global.enemy_type[0]))
}



if global.loops>2
{
global.enemy_type[0]=choose("purple metroid","crawler","purple spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
do
    {
    global.enemy_type[1]=choose("purple metroid","crawler","purple spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
    }until(global.enemy_type[1]!=global.enemy_type[0])
    
do
    {
    global.enemy_type[2]=choose("purple metroid","crawler","purple spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
    }until((global.enemy_type[2]!=global.enemy_type[1])and(global.enemy_type[2]!=global.enemy_type[0]))
    
do
    {
    global.enemy_type[3]=choose("purple metroid","crawler","purple spider","swarm","gianteye","copter eye","green metroid","purple metroid","eyeslime","green spider","purple spider","shotgun science","toxic science","mother")
    }until((global.enemy_type[3]!=global.enemy_type[2])and(global.enemy_type[3]!=global.enemy_type[1])and(global.enemy_type[3]!=global.enemy_type[0]))
}




this_x=((xx*room_size_width)*block_size)
this_y=((yy*room_size_height)*block_size)


xxx=this_x
yyy=this_y

rand_x=0
rand_y=0
repeat(10)
{
if random(100)>global.hardness
{
do
{
rand_x=xxx+round(random(room_size_width))*block_size
rand_y=yyy+round(random(room_size_height))*block_size
}
until(place_meeting(rand_x,rand_y,wall)=false)

s=instance_create(rand_x,rand_y,spawner)
s.type=choose(global.enemy_type[0],global.enemy_type[1],global.enemy_type[2],global.enemy_type[3])
}
}


turret_top_wall()
turret_bottom_wall()
turret_left_wall()
turret_right_wall()


this_x=((xx*room_size_width)*block_size)
this_y=((yy*room_size_height)*block_size)


xxx=this_x
yyy=this_y

rand_x=0
rand_y=0
repeat(global.hardness/25)
{
if random(10)>7
{
do
{
rand_x=xxx+random(room_size_width)*block_size
rand_y=yyy+random(room_size_height)*block_size
}
until(place_meeting(rand_x,rand_y,wall)=false)

instance_create(rand_x+16,rand_y+16,choose(science,science,science,chicken))
}
}
