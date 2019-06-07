
file="GameOptions.ini"

if file_exists(file)
{
ini_open(file)
load_string=ini_read_string("save","game","dead")
//show_message(string(load_string))
ini_close()
load_map=ds_map_create()
ds_map_read(load_map,load_string)

global.vibrate=1
global.vibrate=ds_map_find_value(load_map,"Vibrate")
global.volume=ds_map_find_value(load_map,"Volume")
global.music_volume=ds_map_find_value(load_map,"MusicVolume")
global.fancy=ds_map_find_value(load_map,"Fancy")
global.fullscreen=ds_map_find_value(load_map,"FullScreen")
global.vsync=ds_map_find_value(load_map,"Vsync")

if global.fullscreen=1{window_set_fullscreen(true)}else{window_set_fullscreen(false)}

if global.fancy_worked=0{global.fancy=0}


ds_map_destroy(load_map)

save_options()
}
else{save_options()}

if is_undefined(global.volume){global.volume=0.5 } 
if is_undefined(global.music_volume){global.music_volume=0.5} 
if is_undefined(global.vsync){global.vsync=0 } 


global.volume=real(global.volume)
global.music_volume=real(global.music_volume)

set_volume_level(global.volume)
set_music_level(global.music_volume)
