/*
global.hat_desc[0]="Nothing Special"
global.hat_desc[1]="-25% hp  2x faster reloads"
global.hat_desc[2]="-25% HP  +50% speed"
global.hat_desc[3]="+50 Hp  -50% speed  2x slower reloads"
*/
    
    global.beard_speed_buff=1
    global.beard_hp_buff=1
    global.beard_def_buff=1
    global.beard_atk_buff=1
    global.beard_reload_buff=1
    global.beard_mag_buff=1
    global.beard_special_buff=1

if global.hat=0
{

if global.stache_level>0
{
global.beard_def_buff=1-((global.stache_level+1)/100)
}


}


if global.hat=1
{
    global.beard_def_buff=1.25 //backwards lower = takes less damage
    global.beard_reload_buff=1.75
    
    if global.stache_level1>0
    {
        global.beard_reload_buff=1.75+((global.stache_level1+1)/100)
        global.beard_def_buff=1.25-((global.stache_level1+1)/200)
    }
    
}

if global.hat=2
{
    global.beard_speed_buff=1.25
    global.beard_def_buff=1.50//backwords lower = takes less damage
    
    if global.stache_level2>0
    {
        global.beard_speed_buff=1.25+((global.stache_level2+1)/100)
        global.beard_def_buff=1.50-((global.stache_level2+1)/100)
        global.beard_atk_buff=1.25+((global.stache_level2+1)/100)
    }
}

if global.hat=3
{
    global.beard_speed_buff=0.75
    global.beard_def_buff=0.75//backwords lower = takes less damage
    global.beard_reload_buff=0.5
    
    
    if global.stache_level3>0
    {
        global.beard_speed_buff=0.75+((global.stache_level3+1)/100)
        global.beard_def_buff=0.75-((global.stache_level3+1)/200)
    }
}
