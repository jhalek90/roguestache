if image_single=0{with(pick_a_perk){text="Stache power grants Extra Speed"}}//player.step
if image_single=1{with(pick_a_perk){text="Stache power turns nearby enemies into chickens"}}//controller. press Q
if image_single=2{with(pick_a_perk){text="Stache power makes you invincible"}}//player.hurt_me() player.stomp_step()
if image_single=3{with(pick_a_perk){text="Stache power heals you to full HP"}}//controler press Q
if image_single=4{with(pick_a_perk){text="Stache power adds 5 magazines to your weapon"}}//controler press Q
if image_single=5{with(pick_a_perk){text="Stache power grants infinite jump"}} //player.control_step


if image_single=6{with(pick_a_perk){text="Money is worth double"}}//player collide with credit
if image_single=7{with(pick_a_perk){text="20% Defense boost"}}//player.hurt_me() player.stomp_step()
if image_single=8{with(pick_a_perk){text="Pick up money and exp from a longer range"}} //exp and money step

if image_single=9{with(pick_a_perk){text="15% extra damage"}}//player make_bullet
if image_single=10{with(pick_a_perk){text="15% speed boost"}} //player movement_step

if image_single=11{with(pick_a_perk){text="Locked chests open without keys"}} //player contact chest
