

if global.light_engine_enabled=true
    {
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
        draw_set_blend_mode_ext(bm_zero,bm_src_color);
        draw_surface_ext(global.light_surface2,view_xview[0],view_yview[0],1,1,0,c_white,1);
        draw_set_blend_mode_ext(bm_dest_color,bm_src_alpha);
        draw_surface_ext(global.light_surface2,view_xview[0],view_yview[0],1,1,0,c_white,0.5);//"glow"
    
/*
        if global.rage_on=1
        {
        depth_timer-=1
        if depth_timer<0
        {
        depth_timer=10
        }
        draw_set_blend_mode_ext(bm_dest_color,bm_src_color);
        draw_surface_ext(global.light_surface2,view_xview[0],view_yview[0],1,1,0,make_color_hsv(global.hue,255,255),1);
        }
        */
        
    }



draw_set_blend_mode(bm_normal)




draw_set_color(c_black)
draw_rectangle(view_xview[0]+1,view_yview[0]-16,view_xview[0]-16,view_yview[0]+view_hview[0]+16,0)
draw_rectangle(view_xview[0]+view_wview[0]-1,view_yview[0]-16,view_xview[0]+view_wview[0]+16,view_yview[0]+view_hview[0]+16,0)
draw_rectangle(view_xview[0]-16,view_yview[0]+1,view_xview[0]+view_wview[0]+16,view_yview[0]-16,0)
draw_rectangle(view_xview[0]-16,view_yview[0]+view_hview[0]-1,view_xview[0]+view_wview[0]+16,view_yview[0]+view_hview[0]+16,0)
draw_set_color(c_white)




//draw_set_blend_mode(bm_subtract)
//draw_background_tiled(bk_filter1,view_xview[0],view_yview[0])
//draw_background_tiled(bk_filter1,(back_X*32)+view_xview[0]/10,(back_X*16)+view_yview[0]/10)
//draw_set_blend_mode(bm_add)

//with(small_wall)
    //{
    //draw_sprite(spr_wall_shine,image_single,x,y)
    //}

draw_set_blend_mode(bm_add)

with(ring_bullet){event_user(0)}


with(xp_orb)
{
if color_timer<0{if random(10)>5{image_blend=choose(c_lime,c_yellow)}}
draw_sprite_ext(spr_pixel_1,0,x+x_off,y+y_off,1,1,image_angle,image_blend,1)
//draw_sprite_ext(spr_light,0,x+x_off,y+y_off,0.05+xs,0.05,dir,image_blend,random(1))
//draw_sprite_ext(spr_bullet_mask,0,x+x_off,y+y_off,1+xs,1,dir,image_blend,1)
}

with(xp_orb_wait)
{
if random(10)>5{image_blend=choose(c_lime,c_yellow)}
draw_sprite_ext(spr_light,0,x,y,0.05+xs,0.05,dir,image_blend,random(1))
draw_sprite_ext(spr_bullet_mask,0,x,y,1+xs,1,dir,image_blend,1)
}

with(laser_beam)
{
draw_sprite_ext(spr_laser_beam,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}

with(credit)
{

//draw_sprite_ext(spr_light,0,x,y,0.1,0.1,0,c_lime,random(1))
}



draw_set_blend_mode(bm_normal)
with(fire)
{
draw_sprite_ext(sprite_index,image_single,x,y,scale,scale,dir,color,1)
}

draw_set_blend_mode_ext(bm_dest_color,bm_src_alpha);

with(fire)
{
draw_sprite_ext(spr_light,0,x,y,scale*0.15,scale*0.15,direction,color,1)
draw_sprite_ext(spr_fire_square,0,x,y,s_square*scale,s_square*scale,spin,color,1)

}
draw_set_blend_mode(bm_normal)

draw_set_color(c_red)
with(enemy_parent)
    {
    enemy_draw_hp()
    }

draw_set_color(c_white)





