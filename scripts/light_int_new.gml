global.darkness=10
global.player_x=0
global.player_y=0
draw_set_color(c_white);



global.light_surface=surface_create(view_wview[0],view_hview[0])
surface_set_target(global.light_surface)
draw_clear_alpha(c_black,1)
surface_reset_target()
global.light_surface2=surface_create(view_wview[0],view_hview[0])
surface_set_target(global.light_surface2)
draw_clear_alpha(c_black,1)
surface_reset_target()
uni_resolution_hoz = shader_get_uniform(shd_gaussian_horizontal,"resolution");
uni_resolution_vert = shader_get_uniform(shd_gaussian_vertical,"resolution");
var_resolution_x = view_wview;
var_resolution_y = view_hview;
shader_enabled = true;
final_surface = surface_create(view_wview,view_hview);
