
if global.multiplayer=0
{
d=instance_create(x,y-8,dead_guy)
d.sprite_index=s_stand 
d.image_single=8
d.image_xscale=face
global.dead=1
instance_destroy()
}
else
{
d=instance_create(x,y-8,dead_guy)
d.sprite_index=s_stand 
d.image_single=8
d.image_xscale=face
instance_destroy()
if global.hosting=1{with(server){event_user(1)}}else{with(client){event_user(1)}}
}
