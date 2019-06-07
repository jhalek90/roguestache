global.can_use_shaders=1

if shader_is_compiled(sh_CRT_Windows_full_shader)=false
    {
    global.can_use_shaders=0
    }
    
if shader_is_compiled(sh_CRT_Windows_distortion_and_border)=false
    {
    global.can_use_shaders=0
    }
    
    
if global.wants_shaders=0
    {
    global.can_use_shaders=0
    }
