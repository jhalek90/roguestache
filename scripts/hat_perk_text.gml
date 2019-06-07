if instance_exists(cos_box){target=cos_box}
if instance_exists(slots){target=slots}

target.text=""
target.text2=""
target.text3=""

if global.cos_perk1[index]=0{target.text="Hp Boost 10%"} //hurt_me()
if global.cos_perk1[index]=1{target.text="Hp Boost 15%"} //hurt_me()
if global.cos_perk1[index]=2{target.text="Hp Boost 20%"} //hurt_me()
if global.cos_perk1[index]=3{target.text="Damage Boost 10%"} //make_bullet()
if global.cos_perk1[index]=4{target.text="Damage Boost 15%"}  //make_bullet()
if global.cos_perk1[index]=5{target.text="Damage Boost 20%"}  //make_bullet()
if global.cos_perk1[index]=6{target.text="Reload speed boost 10%"}//ammo_step()
if global.cos_perk1[index]=7{target.text="Reload speed boost 15%"}//ammo_step()
if global.cos_perk1[index]=8{target.text="Reload speed boost 20%"}//ammo_step()
if global.cos_perk1[index]=9{target.text="Speed + 10%"}//player.movement_step
if global.cos_perk1[index]=10{target.text="Speed + 15%"}//player.movement_step
if global.cos_perk1[index]=11{target.text="Speed + 20%"}//player.movement_step
if global.cos_perk1[index]=12{target.text="fire rate + 10%"} //player.step
if global.cos_perk1[index]=13{target.text="fire rate + 15%"} //player.step
if global.cos_perk1[index]=14{target.text="firerate + 20%"} //player.step
if global.cos_perk1[index]=15{target.text="Exp rate + 10%"} //player.collide.exp_orb
if global.cos_perk1[index]=16{target.text="Exp rate +15%"}//player.collide.exp_orb
if global.cos_perk1[index]=17{target.text="Exp rate +20%"}//player.collide.exp_orb

if global.cos_perk2[index]=0{target.text2="Double Dash Distance"}//player.control_step()
if global.cos_perk2[index]=1{target.text2="Triple Jump"}//player.control_step()
if global.cos_perk2[index]=2{target.text2="Low Gravity"}//player.movement_step()
if global.cos_perk2[index]=3{target.text2="Longer knife"}//player.control_step()
if global.cos_perk2[index]=4{target.text2="Higher Jumps"}//player.control_step()
if global.cos_perk2[index]=5{target.text2="More ammo on pickup"}//random_gun.step
if global.cos_perk2[index]=6{target.text2="RAINBOW BULLETS"}//laser.step
if global.cos_perk2[index]=7{target.text2="Crates always drop a weapon"}//crate.destroy
if global.cos_perk2[index]=8{target.text2="Nearby enemies share your damage"}//player.hurt_me
if global.cos_perk2[index]=9{target.text2="5% chance to gain health from kills"}//player.hurt_me
if global.cos_perk2[index]=10{target.text2="start with a drone"}//play button

if global.cos_perk3[index]=0{target.text3="Explosions heal you"}//explosion/explosion2.collide with player
if global.cos_perk3[index]=1{target.text3="Faster Knives"}//player.step
if global.cos_perk3[index]=2{target.text3="Piercing Pistol"}//make_bullet()
if global.cos_perk3[index]=3{target.text3="Dash attack"}//player,collide.enemy_parent
if global.cos_perk3[index]=4{target.text3="Longer Stache Power"}//controler.step
if global.cos_perk3[index]=5{target.text3="Explosive Leveling"}//controler
if global.cos_perk3[index]=6{target.text3="Extra inventory slot"}//play button event 0
if global.cos_perk3[index]=7{target.text3="2 Extra inventory slots"}//play button event 0
if global.cos_perk3[index]=8{target.text3="3 Extra inventory slots"}//play button event 0
if global.cos_perk3[index]=9{target.text3="Pistol shots bounce"}//shoot_gun1()
if global.cos_perk3[index]=10{target.text3="5% chance to gain ammo from kills"}//enemt_hurt
target.text4="Press 'S' to sell for $"+string(value)
