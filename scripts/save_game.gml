//
//
file="GameStash.ini"
save_map=ds_map_create()
i=0
repeat(100)
    {
    ds_map_add(save_map,"Gun"+string(i),global.gun_unlocked[i])
    i+=1
    }
i=0
repeat(100)
    {
    ds_map_add(save_map,"Hat"+string(i),global.hat_unlocked[i])
    i+=1
    }


i=0
repeat(100)
    {
    ds_map_add(save_map,"Gun_new"+string(i),global.gun_unlocked_new[i])
    i+=1
    }
i=0
repeat(100)
    {
    ds_map_add(save_map,"Hat_new"+string(i),global.hat_unlocked_new[i])
    i+=1
    }


ds_map_add(save_map,"CosTotal",global.cos_total)
ds_map_add(save_map,"StacheTokens",global.stache_tokens)
ds_map_add(save_map,"StacheLevel",global.stache_level)
ds_map_add(save_map,"StacheLevelEXP",global.stache_level_exp)

ds_map_add(save_map,"StacheLevel1",global.stache_level1)
ds_map_add(save_map,"StacheLevelEXP1",global.stache_level_exp1)

ds_map_add(save_map,"StacheLevel2",global.stache_level2)
ds_map_add(save_map,"StacheLevelEXP2",global.stache_level_exp2)

ds_map_add(save_map,"StacheLevel3",global.stache_level3)
ds_map_add(save_map,"StacheLevelEXP3",global.stache_level_exp3)

ds_map_add(save_map,"LastLogin",global.last_day_login)

ds_map_add(save_map,"Stats_Kills",global.stats_kills)
ds_map_add(save_map,"Stats_Deaths",global.stats_deaths)
ds_map_add(save_map,"Stats_Shots",global.stats_shots)
ds_map_add(save_map,"Stats_Crates",global.stats_crates)
ds_map_add(save_map,"Stats_Barrel",global.stats_barrel)
ds_map_add(save_map,"Stats_Money",global.stats_money)
ds_map_add(save_map,"Stats_Locked",global.stats_locked_crates)




i=0
repeat(global.cos_total+1)
    {
    ds_map_add(save_map,"Cos"+string(i),global.cos_unlocked[i])
    ds_map_add(save_map,"CosPerk1"+string(i),global.cos_perk1[i])
    ds_map_add(save_map,"CosPerk2"+string(i),global.cos_perk2[i])
    ds_map_add(save_map,"CosPerk3"+string(i),global.cos_perk3[i])
    ds_map_add(save_map,"CosStar"+string(i),global.cos_star[i])
    i+=1
    }



ds_map_add(save_map,"LifeTimeKills",global.lifetime_kills)
ds_map_add(save_map,"LifeTimeExp",global.lifetime_exp)
ds_map_add(save_map,"LifeTimeDeaths",global.lifetime_deaths)

ds_map_add(save_map,"BossBeat0",global.boss_beat0)
ds_map_add(save_map,"BossBeat1",global.boss_beat1)
ds_map_add(save_map,"BossBeat2",global.boss_beat2)
ds_map_add(save_map,"BossBeat3",global.boss_beat3)

ds_map_add(save_map,"SkipTut",global.skip_tut)
ds_map_add(save_map,"FancyWorks",global.fancy_worked)
ds_map_add(save_map,"Shake",global.shake_smount)


ds_map_add(save_map,"Total_cash_life",global.total_money_life)

ds_map_add(save_map,"CustomBeard",global.custom_beard)

ds_map_add(save_map,"ShadersOn",global.wants_shaders)






ini_open(file)
ini_write_string("save","game",ds_map_write(save_map))
ini_close()
ds_map_destroy(save_map)
