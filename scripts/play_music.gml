//play_music 

audio_stop_sound(music_title)
audio_stop_sound(music_power_up)
audio_stop_sound(music_menu)
audio_stop_sound(music_level1)
audio_stop_sound(music_level2)
audio_stop_sound(music_level3)
audio_stop_sound(music_level4)
audio_stop_sound(music_level5)
audio_stop_sound(music_level6)
audio_stop_sound(music_boss)
audio_stop_sound(music_boss2)

if room=room_title {audio_play_sound(music_title,1,true)}
if room=room_guns {audio_play_sound(music_menu,1,true)}
if room=room_level_safezone {audio_play_sound(music_menu,1,true)}




if room=room_level_boss {if global.level_im_on=12 {audio_play_sound(music_boss2,1,true)}else{audio_play_sound(music_boss,1,true)}}


if room=room_level_lab 
    {
    audio_play_sound(choose(music_level1,music_level2,music_level3,music_level4,music_level5,music_level6),1,true) 
    }

