//unlock_custom_hat()


if argument0="stormen"
    {
    global.cos_total+=1
    global.new_hats+=1
    
    global.cos_unlocked[global.cos_total]=53
    global.cos_name[global.cos_total]="?????"
    global.cos_perk1[global.cos_total]=15
    global.cos_perk2[global.cos_total]=10
    global.cos_perk3[global.cos_total]=6
    }

global.cos_star[global.cos_total]=0

u=instance_create(0,0,hat_unlocker)
u.image_single=global.cos_unlocked[global.cos_total]
u.perk1=global.cos_perk1[global.cos_total]
u.perk2=global.cos_perk2[global.cos_total]
u.perk3=global.cos_perk3[global.cos_total]
save_game()
