if place_meeting(x,y,level_door){exit}
if place_meeting(x,y,boss_door){exit}
if place_meeting(x,y,door){exit}
if place_meeting(x,y,weapon_crate){exit}
if place_meeting(x,y,weapon_crate2){exit}
if global.slot_ammo[global.inventory_selected]<100{global.slot_ammo[global.inventory_selected]=0}

