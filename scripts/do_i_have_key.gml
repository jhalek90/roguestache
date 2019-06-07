
/*
98=heart
97=key
*/

    if place_meeting(x+(8*face),y,weapon_crate2)
    {

            with(instance_place(x+(8*face),y,weapon_crate2)){event_user(3)}
            exit
            }


halt=0

i=1
repeat(9)
{

    if ((global.inventory_item[i]=97)and(halt=0) or(has_stache_perk(11)))
        {
            if place_meeting(x+(8*face),y,weapon_crate)
            {
                if dummy_object=0
                {
                    if has_stache_perk(11)=false{global.inventory_item[i]=99}
                    with(instance_place(x+(8*face),y,weapon_crate)){event_user(3)}
                }
            }
        halt=1
        
        }
    i+=1

}





