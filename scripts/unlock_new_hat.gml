global.cos_total+=1
global.new_hats+=1
max_hats=46
max_hat_perks=17
max_hat_perks2=10
max_hat_perks3=10
global.cos_unlocked[global.cos_total]=round(random(max_hats))

//global.cos_unlocked[global.cos_total]=choose(45,45)


if global.cos_unlocked[global.cos_total] <1 {global.cos_unlocked[global.cos_total]=1}
if global.cos_unlocked[global.cos_total] >max_hats {global.cos_unlocked[global.cos_total]=max_hats}
global.cos_name[global.cos_total]="?????"



global.cos_perk1[global.cos_total]=round(random(max_hat_perks))
if global.cos_perk1[global.cos_total]<0{global.cos_perk1[global.cos_total]=0}
if global.cos_perk1[global.cos_total]>max_hat_perks{global.cos_perk1[global.cos_total]=max_hat_perks}


global.cos_perk2[global.cos_total]=round(random(max_hat_perks2))
if global.cos_perk2[global.cos_total]<0{global.cos_perk2[global.cos_total]=0}
if global.cos_perk2[global.cos_total]>max_hat_perks2{global.cos_perk2[global.cos_total]=max_hat_perks2}


global.cos_perk3[global.cos_total]=round(random(max_hat_perks3))
if global.cos_perk3[global.cos_total]<0{global.cos_perk3[global.cos_total]=0}
if global.cos_perk3[global.cos_total]>max_hat_perks3{global.cos_perk3[global.cos_total]=max_hat_perks3}




//show_message(string(global.cos_perk1[global.cos_total])+"     "+string(global.cos_perk2[global.cos_total])+"     "+string(global.cos_perk3[global.cos_total]))

global.cos_star[global.cos_total]=0

u=instance_create(0,0,hat_unlocker)
u.image_single=global.cos_unlocked[global.cos_total]
u.perk1=global.cos_perk1[global.cos_total]
u.perk2=global.cos_perk2[global.cos_total]
u.perk3=global.cos_perk3[global.cos_total]
save_game()
