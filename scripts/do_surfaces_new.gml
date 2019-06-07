global.fancy=0////////////////
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
draw_clear(c_white)
draw_set_blend_mode(bm_subtract)

with(player){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.4,0.4,0, c_white,1)}
with(dead_guy2){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.8,0.8,0, c_red,1)}
with(Dynamic_light){light_draw()}
with(Static_light_object){light_draw()}

with(flashlight){event_user(0)}
//with(eye_slime){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,0.25,0,c_red,1)}
with(boss){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],1,1,0,c_red,1)}
with(weapon_crate){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.5,0.5,0, c_yellow,1)}
//with(enemy){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,0.25,0,c_red,1)}
//with(spider){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,0.25,0,c_red,1)}
//with(swarm){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.15,0.15,0,c_red,1)}
//with(science){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,0.25,0,c_red,1)}
//with(giant_eye){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],1,1,0,c_red,1)}
//with(crawler){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.15,0.15,0,c_red,1)}
with(eye_bomb){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.15,0.15,0,c_red,1)}
//with(turret){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,0.25,0,color,1)}
with(spike){draw_sprite_ext(spr_light,0,x-view_xview[0],y-16-view_yview[0],0.25,0.25,0,c_red,1)}
with(laser){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,random(0.2)+0.1,dir,image_blend,1)}
with(laser_hit){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.5,random(0.25)+0.25,image_angle,image_blend,1)}
with(lightbase){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.75,0.75,0,color,1)}
with(enemy_laser){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.25,random(0.2)+0.1,dir,image_blend,1)}
with(xp_orb){draw_sprite_ext(spr_light,0,x+x_off-view_xview[0],y+y_off-view_yview[0],0.1,0.1,image_angle,image_blend,1) }//
with(fire){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],0.2,0.2,image_angle,color,1)}

with(final_boss){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],1,1,image_angle,c_white,1)}

with(random_gun){draw_sprite_ext(spr_light,0,x-view_xview[0],y-view_yview[0],1,1,0,c_white,1)}
//draw_set_color(c_white)
//with(small_wall){draw_sprite(spr_level_wall_lights,image_single,x-view_xview[0],y-view_yview[0])}

if global.fancy=1 
    {
    if global.rage_on=0
        {
        //draw_set_color(make_color_rgb(global.darkness,global.darkness,global.darkness))
        draw_set_color(make_color_rgb(128,128,128))
        }
    else
        {
        //draw_set_color(make_color_rgb(128,128,128))
        draw_set_color(make_color_rgb(128,128,128))
        }
    
    draw_rectangle(0,0,view_wview[0],view_hview[0],0)
    }
else
{
    if global.rage_on=0
        {
        //draw_set_color(make_color_rgb(global.darkness,global.darkness,global.darkness))
        draw_set_color(make_color_rgb(64,64,64))
        }
    else
        {
        //draw_set_color(make_color_rgb(128,128,128))
        draw_set_color(make_color_rgb(64,64,64))
        }
    draw_rectangle(0,0,view_wview[0],view_hview[0],0)
}


draw_set_color(c_white)

surface_reset_target()
surface_set_target(global.light_surface2)
draw_clear(c_white)
draw_set_blend_mode(bm_subtract)
draw_surface(global.light_surface,0,0);
draw_set_blend_mode(bm_normal)
surface_reset_target()



if shader_enabled 
{
if global.fancy=1 {shader_set(shd_gaussian_horizontal);}
surface_set_target(final_surface);
draw_clear(c_black)
if global.fancy=1 {shader_set_uniform_f(uni_resolution_hoz, var_resolution_x, var_resolution_y);}
//draw_surface(global.light_surface,0,0);
draw_set_blend_mode_ext(bm_src_alpha, bm_inv_dest_alpha)
draw_surface(global.light_surface2,0,0);
draw_set_blend_mode(bm_normal)
if global.fancy=1 {shader_reset();}
surface_reset_target();
surface_set_target(global.light_surface2);
draw_clear(make_color_rgb(global.darkness,global.darkness,global.darkness))
//Do vertical blur last
if global.fancy=1 {shader_set(shd_gaussian_vertical);}
if global.fancy=1 {shader_set_uniform_f(uni_resolution_vert, var_resolution_x, var_resolution_y);}
draw_set_blend_mode_ext(bm_src_alpha,bm_inv_dest_alpha)
draw_surface(final_surface,0,0);
if global.fancy=1 {shader_reset();}


draw_surface(final_surface,0,0);
//draw_clear(c_black)
///////////////*
/*
if global.fancy=1 {
draw_set_blend_mode(bm_normal)
surface_set_target(global.light_surface2);
var fx8bitChillout = fx8bitChilloutGrayscale;
if( _modeColor )
    fx8bitChillout = fx8bitChilloutColor;

var uRoundnessScale = shader_get_uniform( fx8bitChillout, "uRoundnessScale" );
var uSize = shader_get_uniform( fx8bitChillout, "uSize" );
var uToonLevels = shader_get_uniform( fx8bitChillout, "uToonLevels" );

shader_set( fx8bitChillout );
shader_set_uniform_f( uRoundnessScale, _roundnessScale, _roundnessExtraScale, _roundnessScale * _roundnessExtraScale );
shader_set_uniform_f( uSize,
    _pixelScale / surface_get_width( final_surface ),
    _pixelScale / surface_get_height( final_surface ),
    surface_get_width( final_surface ) / _pixelScale,
    surface_get_height( final_surface ) / _pixelScale
);
shader_set_uniform_f( uToonLevels, _toonLevels, 1.0 / _toonLevels );
draw_surface(global.light_surface2, 0, 0 );
shader_reset();

surface_reset_target();

}
/////////////////*
*/

//draw_set_blend_mode(bm_add)
//draw_background_tiled(bk_clouds,(back_X*2),0)


surface_reset_target();

}

draw_set_blend_mode(bm_normal)
