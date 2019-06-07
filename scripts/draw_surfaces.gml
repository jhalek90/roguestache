




if( !surface_exists(global.light_surface))
{
global.light_surface=surface_create(view_wview[0],view_hview[0]);
}

if( !surface_exists(global.light_surface2))
{
global.light_surface2=surface_create(view_wview[0],view_hview[0]);
}

if( !surface_exists(final_surface ))
{
final_surface  =surface_create(view_wview[0],view_hview[0]);
}


surface_set_target(global.light_surface)
draw_clear_alpha(c_white,1)
draw_set_blend_mode(bm_subtract)

with(player){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.5,0.5,0, c_gray,1)}
draw_sprite_ext(spr_light,0,mouse_x-view_xview[0],mouse_y-view_yview[0],0.5,0.5,0, c_gray,1)
with(Dynamic_light){light_draw()}
with(Static_light_object){light_draw()}
with(eye_slime){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.5,0.5,0,c_red,1)}
with(boss){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],1,1,0,c_red,1)}
with(enemy){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.5,0.5,0,c_red,1)}
with(spider){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.5,0.5,0,c_red,1)}

with(swarm){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.5,0.5,0,c_red,1)}
with(science){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.5,0.5,0,c_red,1)}
with(giant_eye){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],1,1,0,c_red,1)}

with(crawler){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,0.25,0,c_red,1)}
with(eye_bomb){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,0.25,0,c_red,1)}
with(turret){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.5,0.5,0,color,1)}
with(spike){draw_sprite_ext(spr_light,0,x-view_xview[0],y-16-view_yview[0],0.25,0.25,0,c_red,1)}
with(laser){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,random(0.2)+0.1,dir,image_blend,1)}
with(laser_hit){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.5,random(0.25)+0.25,image_angle,image_blend,1)}
with(lightbase){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.75,0.75,0,color,1)}
with(enemy_laser){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,random(0.2)+0.1,dir,image_blend,1)}
//with(temp_light){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],1,1,0,color,1)}
//with(lightbase){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],1,1,image_angle,color,random(0.25)+0.75)}
with(xp_orb){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,0.25,image_angle,image_blend,1) }//
with(fire){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.4,0.4,image_angle,color,1)}

with(final_boss){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],1,1,image_angle,c_white,1)}


//draw_set_color(c_white)
with(small_wall){draw_sprite_ext(spr_level_wall_lights,image_single,x-view_xview[0],y-view_yview[0],1,1,0,c_white,1)}

if global.fancy=1 {
draw_set_color(make_color_rgb(global.darkness,global.darkness,global.darkness))
draw_rectangle(0,0,view_wview[0],view_hview[0],0)
}
else{
draw_set_color(make_color_rgb(global.darkness,global.darkness,global.darkness))
draw_rectangle(0,0,view_wview[0],view_hview[0],0)
}


draw_set_color(c_white)

surface_reset_target()
surface_set_target(global.light_surface2)
draw_clear_alpha(c_white,1)
draw_set_blend_mode(bm_subtract)
draw_surface(global.light_surface,0,0);
draw_set_blend_mode(bm_normal)
surface_reset_target()






////////////////////////////////////////////////////////////////////////////////////////////////
/*
//Do horizontal blur first
surface_set_target(final_surface);
draw_clear_alpha(c_black,1)
draw_set_blend_mode_ext(bm_src_alpha, bm_inv_dest_alpha)
draw_surface(global.light_surface2,0,0);
draw_set_blend_mode(bm_normal)
surface_reset_target();
surface_set_target(global.light_surface2);
draw_clear_alpha(make_color_rgb(global.darkness,global.darkness,global.darkness),1)
draw_set_blend_mode_ext(bm_src_alpha,bm_inv_dest_alpha)
draw_surface(final_surface,0,0);
surface_reset_target();
draw_set_blend_mode(bm_normal)
draw_set_blend_mode_ext(bm_zero,bm_src_color)
draw_surface_ext(global.light_surface2,view_xview[0],view_yview[0],1,1,0,c_white,0.75);
draw_set_blend_mode(bm_normal)
*/
////////////////////////////////////////////////////////////////////////////////////////////////


if shader_enabled 
{
if global.fancy=1 {shader_set(shd_gaussian_horizontal);}
surface_set_target(final_surface);
draw_clear_alpha(c_black,1)
if global.fancy=1 {shader_set_uniform_f(uni_resolution_hoz, var_resolution_x, var_resolution_y);}
//draw_surface(global.light_surface,0,0);
draw_set_blend_mode_ext(bm_src_alpha, bm_inv_dest_alpha)
draw_surface(global.light_surface2,0,0);
draw_set_blend_mode(bm_normal)
if global.fancy=1 {shader_reset();}
surface_reset_target();
surface_set_target(global.light_surface2);
draw_clear_alpha(make_color_rgb(global.darkness,global.darkness,global.darkness),1)
//Do vertical blur last
if global.fancy=1 {shader_set(shd_gaussian_vertical);}
if global.fancy=1 {shader_set_uniform_f(uni_resolution_vert, var_resolution_x, var_resolution_y);}
draw_set_blend_mode_ext(bm_src_alpha,bm_inv_dest_alpha)
draw_surface(final_surface,0,0);
if global.fancy=1 {shader_reset();}



surface_reset_target();
//draw_set_blend_mode(bm_normal)

draw_set_blend_mode_ext(bm_dest_color,bm_src_color);
draw_surface_ext(global.light_surface2,round(view_xview[0]),round(view_yview[0]),1,1,0,c_white,0.85);
draw_set_blend_mode(bm_normal)

/*

draw_set_blend_mode_ext(bm_zero,bm_src_color)
//draw_set_blend_mode_ext(bm_dest_color,bm_src_color);
draw_surface_ext(global.light_surface2,view_xview[0],view_yview[0],1,1,0,c_white,0.5);
*/


draw_set_color(c_black)
draw_rectangle(view_xview[0]+1,view_yview[0]-16,view_xview[0]-16,view_yview[0]+view_hview[0]+16,0)

draw_rectangle(view_xview[0]+view_wview[0]-1,view_yview[0]-16,view_xview[0]+view_wview[0]+16,view_yview[0]+view_hview[0]+16,0)


draw_rectangle(view_xview[0]-16,view_yview[0]+1,view_xview[0]+view_wview[0]+16,view_yview[0]-16,0)

draw_rectangle(view_xview[0]-16,view_yview[0]+view_hview[0]-1,view_xview[0]+view_wview[0]+16,view_yview[0]+view_hview[0]+16,0)

draw_set_color(c_white)

}


//draw_set_blend_mode(bm_subtract)
//draw_background_tiled(bk_clouds,back_X+view_xview[0]/10,view_yview[0]/10)
//draw_set_blend_mode(bm_normal)




draw_set_blend_mode(bm_add)
with(xp_orb)
{
if color_timer<0{if random(10)>5{image_blend=choose(c_lime,c_yellow)}}
draw_sprite_ext(spr_light,0,x,y,0.05+xs,0.05,dir,image_blend,random(1))
//draw_sprite_ext(spr_light,0,x,y,0.03+xs,0.03,dir,c_white,1)
draw_sprite_ext(spr_bullet_mask,0,x,y,1+xs,1,dir,image_blend,1)
//draw_self()
}



draw_set_blend_mode(bm_normal)





