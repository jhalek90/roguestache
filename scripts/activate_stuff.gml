if instance_exists(player)
{



instance_deactivate_region(view_xview[0]-256, view_yview[0]-256, view_wview[0]+512, view_hview[0]+512,false,true)
instance_activate_object(mouse)
instance_activate_object(Music_slider)
instance_activate_object(slider)
instance_activate_object(Volume_slider)
instance_activate_object(wall)
instance_activate_object(player)
instance_activate_object(pixel_flip)
instance_activate_object(progress)
instance_activate_object(shade)
instance_activate_object(drama_filter)
instance_activate_object(gore_controller)
instance_activate_object(pick_a_perk)
instance_activate_object(pick_a_button)
instance_activate_object(stache_level_meter)
if instance_exists(areyousure)=false
{
instance_activate_object(decor)
instance_activate_object(unlocker)
instance_activate_object(gui_object)
instance_activate_object(dead_room_controler)
instance_activate_object(areyousure)
instance_activate_object(giant_eye)
instance_activate_object(boss)
instance_activate_object(hat_unlocker)

if activate_tick>6
{
instance_activate_region(view_xview[0]-256, view_yview[0]-256, view_wview[0]+512, view_hview[0]+512,true)

activate_tick=0
}

}
else
{
instance_deactivate_object(giant_eye)
instance_deactivate_object(boss)
instance_deactivate_object(enemy_parent)
}



}

instance_activate_object(dead_guy2)
