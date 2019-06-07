//audio_play_sound(snd_select,1,0)



file="GameOptions.ini"
save_map=ds_map_create()
ds_map_add(save_map,"Vibrate",global.vibrate)
ds_map_add(save_map,"MusicVolume",global.music_volume)
ds_map_add(save_map,"Volume",global.volume)
ds_map_add(save_map,"FullScreen",global.fullscreen)
ds_map_add(save_map,"Fancy",global.fancy)
ds_map_add(save_map,"Vsync",global.vsync)


ini_open(file)
ini_write_string("save","game",ds_map_write(save_map))
ini_close()
ds_map_destroy(save_map)


set_volume_level(global.volume)
set_music_level(global.music_volume)
