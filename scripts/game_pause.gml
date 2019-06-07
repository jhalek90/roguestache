if pause_timer>0{exit}
if instance_exists(dead_room_controler){exit}
if instance_exists(stache_level_meter){exit}
if rr=0{exit}
if room=room_title{ exit}
//if room=room_died{ exit}
if global.paused=1{exit}
if instance_exists(areyousure)=false{instance_create(x,y,areyousure)}
