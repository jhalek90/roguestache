//
//
file="GameStash.ini"
if file_exists(file)
{
ini_open(file)
load_string=ini_read_string("save","game","dead")
ini_close()
load_map=ds_map_create()
ds_map_read(load_map,load_string)
global.savesworking=ds_map_find_value(load_map,"Working")

global.life=ds_map_find_value(load_map,"Life")
global.ammo=ds_map_find_value(load_map,"Ammo")
global.savepoint=ds_map_find_value(load_map,"SavePoint")
global.gun_i_have=ds_map_find_value(load_map,"Gun")
global.total_money_life=ds_map_find_value(load_map,"Total_cash_life")
if is_undefined(global.total_money_life){global.total_money_life=0}

i=0
repeat(100)
{
global.gun_unlocked[i]=ds_map_find_value(load_map,"Gun"+string(i))
i+=1
}
i=0
repeat(100)
{
global.hat_unlocked[i]=ds_map_find_value(load_map,"Hat"+string(i))
i+=1
}

i=0
repeat(100)
{
global.gun_unlocked_new[i]=ds_map_find_value(load_map,"Gun_new"+string(i))
i+=1
}
i=0
repeat(100)
{
global.hat_unlocked_new[i]=ds_map_find_value(load_map,"Hat_new"+string(i))
i+=1
}

global.lifetime_kills=ds_map_find_value(load_map,"LifeTimeKills")
global.lifetime_exp=ds_map_find_value(load_map,"LifeTimeExp")
global.lifetime_deaths=ds_map_find_value(load_map,"LifeTimeDeaths")


/*
global.stache_tokens=0
global.stache_level=0
*/


if is_undefined(ds_map_find_value(load_map,"Stats_Kills")){global.stats_kills=0}
else{global.stats_kills=ds_map_find_value(load_map,"Stats_Kills")}

if is_undefined(ds_map_find_value(load_map,"Stats_Deaths")){global.stats_deaths=0}
else{global.stats_deaths=ds_map_find_value(load_map,"Stats_Deaths")}

if is_undefined(ds_map_find_value(load_map,"Stats_Shots")){global.stats_shots=0}
else{global.stats_shots=ds_map_find_value(load_map,"Stats_Shots")}

if is_undefined(ds_map_find_value(load_map,"Stats_Crates")){global.stats_crates=0}
else{global.stats_crates=ds_map_find_value(load_map,"Stats_Crates")}

if is_undefined(ds_map_find_value(load_map,"Stats_Barrel")){global.stats_barrel=0}
else{global.stats_barrel=ds_map_find_value(load_map,"Stats_Barrel")}

if is_undefined(ds_map_find_value(load_map,"Stats_Money")){global.stats_money=0}
else{global.stats_money=ds_map_find_value(load_map,"Stats_Money")}

if is_undefined(ds_map_find_value(load_map,"Stats_Locked")){global.stats_locked_crates=0}
else{global.stats_locked_crates=ds_map_find_value(load_map,"Stats_Locked")}


if is_undefined(ds_map_find_value(load_map,"StacheTokens")){global.stache_tokens=0}
else{global.stache_tokens=ds_map_find_value(load_map,"StacheTokens")}

if is_undefined(ds_map_find_value(load_map,"StacheLevel")){global.stache_level=0}
else{global.stache_level=ds_map_find_value(load_map,"StacheLevel")}
if is_undefined(ds_map_find_value(load_map,"StacheLevelEXP")){global.stache_level_exp=0}
else{global.stache_level_exp=ds_map_find_value(load_map,"StacheLevelEXP")}

if is_undefined(ds_map_find_value(load_map,"StacheLevel1")){global.stache_level1=0}
else{global.stache_level1=ds_map_find_value(load_map,"StacheLevel1")}
if is_undefined(ds_map_find_value(load_map,"StacheLevelEXP1")){global.stache_level_exp1=0}
else{global.stache_level1_exp=ds_map_find_value(load_map,"StacheLevelEXP1")}

if is_undefined(ds_map_find_value(load_map,"StacheLevel2")){global.stache_level2=0}
else{global.stache_level2=ds_map_find_value(load_map,"StacheLevel2")}
if is_undefined(ds_map_find_value(load_map,"StacheLevelEXP2")){global.stache_level_exp2=0}
else{global.stache_level_exp2=ds_map_find_value(load_map,"StacheLevelEXP2")}

if is_undefined(ds_map_find_value(load_map,"StacheLevel3")){global.stache_level3=0}
else{global.stache_level3=ds_map_find_value(load_map,"StacheLevel3")}
if is_undefined(ds_map_find_value(load_map,"StacheLevelEXP3")){global.stache_level_exp3=0}
else{global.stache_level_exp3=ds_map_find_value(load_map,"StacheLevelEXP3")}


if is_undefined(ds_map_find_value(load_map,"LastLogin")){global.last_day_login=0}
else{global.last_day_login=ds_map_find_value(load_map,"LastLogin")}

if is_undefined(ds_map_find_value(load_map,"ShadersOn")){global.wants_shaders=1}
else{global.wants_shaders=ds_map_find_value(load_map,"ShadersOn")}





if is_undefined(ds_map_find_value(load_map,"CosTotal")){global.cos_total=0}
else{global.cos_total=ds_map_find_value(load_map,"CosTotal")}

if is_undefined(ds_map_find_value(load_map,"CustomBeard")){global.custom_beard=0}
else{global.custom_beard=ds_map_find_value(load_map,"CustomBeard")}

if is_undefined(ds_map_find_value(load_map,"Shake")){global.shake_smount=0.25}
else{global.shake_smount=ds_map_find_value(load_map,"Shake")}
if global.shake_smount>1{global.shake_smount=1}




i=0
repeat(global.cos_total+1)
{
if is_undefined(ds_map_find_value(load_map,"Cos"+string(i))){global.cos_unlocked[i]=0}
else{global.cos_unlocked[i]=ds_map_find_value(load_map,"Cos"+string(i))}

if is_undefined(ds_map_find_value(load_map,"CosPerk1"+string(i))){global.cos_perk1[i]=0}
else{global.cos_perk1[i]=ds_map_find_value(load_map,"CosPerk1"+string(i))}

if is_undefined(ds_map_find_value(load_map,"CosPerk2"+string(i))){global.cos_perk2[i]=0}
else{global.cos_perk2[i]=ds_map_find_value(load_map,"CosPerk2"+string(i))}

if is_undefined(ds_map_find_value(load_map,"CosPerk3"+string(i))){global.cos_perk3[i]=0}
else{global.cos_perk3[i]=ds_map_find_value(load_map,"CosPerk3"+string(i))}

if is_undefined(ds_map_find_value(load_map,"CosStar"+string(i))){global.cos_star[i]=0}
else{global.cos_star[i]=ds_map_find_value(load_map,"CosStar"+string(i))}

//show_message("Loaded: "+string(global.cos_unlocked[i]))

i+=1
}


if is_undefined(ds_map_find_value(load_map,"FancyWorks")){global.fancy_worked=0}
else{global.fancy_worked=ds_map_find_value(load_map,"FancyWorks")}

if is_undefined(ds_map_find_value(load_map,"SkipTut")){global.skip_tut=0}
else{global.skip_tut=ds_map_find_value(load_map,"SkipTut")}

/*
if is_undefined(ds_map_find_value(load_map,"BossBeat0")){global.boss_beat0=0}
else{global.boss_beat0=ds_map_find_value(load_map,"BossBeat0")}

if is_undefined(ds_map_find_value(load_map,"BossBeat1")){global.boss_beat1=0}
else{global.boss_beat1=ds_map_find_value(load_map,"BossBeat1")}

if is_undefined(ds_map_find_value(load_map,"BossBeat2")){global.boss_beat2=0}
else{global.boss_beat2=ds_map_find_value(load_map,"BossBeat2")}

if is_undefined(ds_map_find_value(load_map,"BossBeat3")){global.boss_beat3=0}
else{global.boss_beat3=ds_map_find_value(load_map,"BossBeat3")}
*/
ds_map_destroy(load_map)

save_game()
}
else{save_game()}
