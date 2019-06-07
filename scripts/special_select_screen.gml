
//

bs=spr_hat0

if global.hat=0
    {
    if global.custom_beard=1{bs=spr_special_hat_1 global.beard_color=c_white}
    if global.custom_beard=2{bs=spr_special_hat_2 global.beard_color=c_white}
    if global.custom_beard=3{bs=spr_special_hat_3 global.beard_color=c_white}
    if global.custom_beard=4{bs=spr_special_hat_4 global.beard_color=c_white}
    }
else    
    {
    global.beard_color=c_black
    }


draw_sprite_ext(bs,6,x-4,y-6,1,1,1,global.beard_color,1)
