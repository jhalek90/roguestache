
global.cos_total+=1
global.new_hats+=1
max_hats=46
max_hat_perks=17
max_hat_perks2=10
max_hat_perks3=10
global.cos_unlocked[global.cos_total]=slot_hat_spinner.image_single

p1=50
p2=50
p3=50
if slot_perk1_spinner.visible=true{p1=slot_perk1_spinner.image_single}
if slot_perk2_spinner.visible=true{p2=slot_perk2_spinner.image_single}
if slot_perk3_spinner.visible=true{p3=slot_perk3_spinner.image_single}

if p1=49{p1=50 global.wheel_spins+=3}
if p2=49{p2=50 global.wheel_spins+=3}
if p3=49{p3=50 global.wheel_spins+=3}

if global.cos_unlocked[global.cos_total] <1 {global.cos_unlocked[global.cos_total]=1}
if global.cos_unlocked[global.cos_total] >max_hats {global.cos_unlocked[global.cos_total]=max_hats}
global.cos_name[global.cos_total]="?????"

global.cos_perk1[global.cos_total]=p1
global.cos_perk2[global.cos_total]=p2
global.cos_perk3[global.cos_total]=p3


global.cos_star[global.cos_total]=0

u=instance_create(0,0,hat_unlocker)
u.image_single=global.cos_unlocked[global.cos_total]
u.perk1=global.cos_perk1[global.cos_total]
u.perk2=global.cos_perk2[global.cos_total]
u.perk3=global.cos_perk3[global.cos_total]
save_game()

if global.wheel_spins>0{slots.alarm[1]=30}
