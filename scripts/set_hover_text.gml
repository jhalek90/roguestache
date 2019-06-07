
flipflop=0
if ((global.perk1=50)and(global.perk2=50)and(global.perk3=50)){flipflop=1}
if global.perk1=0{hover1.text="Hp Boost 10%"} //hurt_me()
if global.perk1=1{hover1.text="Hp Boost 15%"} //hurt_me()
if global.perk1=2{hover1.text="Hp Boost 20%"} //hurt_me()
if global.perk1=3{hover1.text="Damage Boost 10%"} //make_bullet()
if global.perk1=4{hover1.text="Damage Boost 15%"}  //make_bullet()
if global.perk1=5{hover1.text="Damage Boost 20%"}  //make_bullet()
if global.perk1=6{hover1.text="Reload speed boost 10%"}//ammo_step()
if global.perk1=7{hover1.text="Reload speed boost 15%"}//ammo_step()
if global.perk1=8{hover1.text="Reload speed boost 20%"}//ammo_step()
if global.perk1=9{hover1.text="Speed + 10%"}//player.movement_step
if global.perk1=10{hover1.text="Speed + 15%"}//player.movement_step
if global.perk1=11{hover1.text="Speed + 20%"}//player.movement_step
if global.perk1=12{hover1.text="fire rate + 10%"} //player.step
if global.perk1=13{hover1.text="fire rate + 15%"} //player.step
if global.perk1=14{hover1.text="firerate + 20%"} //player.step
if global.perk1=15{hover1.text="Exp rate + 10%"} //player.collide.exp_orb
if global.perk1=16{hover1.text="Exp rate +15%"}//player.collide.exp_orb
if global.perk1=17{hover1.text="Exp rate +20%"}//player.collide.exp_orb

if global.perk2=0{hover2.text="Double Dash Distance"}//player.control_step()
if global.perk2=1{hover2.text="Triple Jump"}//player.control_step()
if global.perk2=2{hover2.text="Low Gravity"}//player.movement_step()
if global.perk2=3{hover2.text="Longer knife"}//player.control_step()
if global.perk2=4{hover2.text="Higher Jumps"}//player.control_step()
if global.perk2=5{hover2.text="More ammo on pickup"}//random_gun.step
if global.perk2=6{hover2.text="RAINBOW BULLETS"}//laser.step
if global.perk2=7{hover2.text="Crates always drop a weapon"}//crate.destroy
if global.perk2=8{hover2.text="Nearby enemies share your damage"}//player.hurt_me
if global.perk2=9{hover2.text="5% chance to gain health from kills"}//player.hurt_me
if global.perk2=10{hover2.text="start with a drone"}//play button

if global.perk3=0{hover3.text="Explosions heal you"}//explosion/explosion2.collide with player
if global.perk3=1{hover3.text="Faster Knives"}//player.step
if global.perk3=2{hover3.text="Piercing Pistol"}//make_bullet()
if global.perk3=3{hover3.text="Dash attack"}//player,collide.enemy_parent
if global.perk3=4{hover3.text="Longer Stache Power"}//controler.step
if global.perk3=5{hover3.text="Explosive Leveling"}//controler
if global.perk3=6{hover3.text="Extra inventory slot"}//play button event 0
if global.perk3=7{hover3.text="2 Extra inventory slots"}//play button event 0
if global.perk3=8{hover3.text="3 Extra inventory slots"}//play button event 0
if global.perk3=9{hover3.text="Pistol shots bounce"}//shoot_gun1()
if global.perk3=10{hover3.text="5% chance to gain ammo from kills"}//enemt_hurt



if flipflop=1{obj_target=hover1}else{obj_target=hover21}
if global.stache_perk1=0{obj_target.text="Stache power grants Extra Speed"}//player.step
if global.stache_perk1=1{obj_target.text="Stache power turns nearby enemies into chickens"}//controller. press Q
if global.stache_perk1=2{obj_target.text="Stache power makes you invincible"}//player.hurt_me() player.stomp_step()
if global.stache_perk1=3{obj_target.text="Stache power heals you to full HP"}//controler press Q
if global.stache_perk1=4{obj_target.text="Stache power adds 5 magazines to your weapon"}//controler press Q
if global.stache_perk1=5{obj_target.text="Stache power grants infinite jump"} //player.control_step
if global.stache_perk1=6{obj_target.text="Money is worth double"}//player collide with credit
if global.stache_perk1=7{obj_target.text="20% Defense boost"}//player.hurt_me() player.stomp_step()
if global.stache_perk1=8{obj_target.text="Pick up money and exp from a longer range"} //exp and money step
if global.stache_perk1=9{obj_target.text="15% extra damage"}//player make_bullet
if global.stache_perk1=10{obj_target.text="15% speed boost"} //player movement_step
if global.stache_perk1=11{obj_target.text="Locked chests open without keys"} //player contact chest

if flipflop=1{obj_target=hover2}else{obj_target=hover22}
if global.stache_perk2=0{obj_target.text="Stache power grants Extra Speed"}//player.step
if global.stache_perk2=1{obj_target.text="Stache power turns nearby enemies into chickens"}//controller. press Q
if global.stache_perk2=2{obj_target.text="Stache power makes you invincible"}//player.hurt_me() player.stomp_step()
if global.stache_perk2=3{obj_target.text="Stache power heals you to full HP"}//controler press Q
if global.stache_perk2=4{obj_target.text="Stache power adds 5 magazines to your weapon"}//controler press Q
if global.stache_perk2=5{obj_target.text="Stache power grants infinite jump"} //player.control_step
if global.stache_perk2=6{obj_target.text="Money is worth double"}//player collide with credit
if global.stache_perk2=7{obj_target.text="20% Defense boost"}//player.hurt_me() player.stomp_step()
if global.stache_perk2=8{obj_target.text="Pick up money and exp from a longer range"} //exp and money step
if global.stache_perk2=9{obj_target.text="15% extra damage"}//player make_bullet
if global.stache_perk2=10{obj_target.text="15% speed boost"} //player movement_step
if global.stache_perk2=11{obj_target.text="Locked chests open without keys"} //player contact chest

if flipflop=1{obj_target=hover3}else{obj_target=hover23}
if global.stache_perk3=0{obj_target.text="Stache power grants Extra Speed"}//player.step
if global.stache_perk3=1{obj_target.text="Stache power turns nearby enemies into chickens"}//controller. press Q
if global.stache_perk3=2{obj_target.text="Stache power makes you invincible"}//player.hurt_me() player.stomp_step()
if global.stache_perk3=3{obj_target.text="Stache power heals you to full HP"}//controler press Q
if global.stache_perk3=4{obj_target.text="Stache power adds 5 magazines to your weapon"}//controler press Q
if global.stache_perk3=5{obj_target.text="Stache power grants infinite jump"} //player.control_step
if global.stache_perk3=6{obj_target.text="Money is worth double"}//player collide with credit
if global.stache_perk3=7{obj_target.text="20% Defense boost"}//player.hurt_me() player.stomp_step()
if global.stache_perk3=8{obj_target.text="Pick up money and exp from a longer range"} //exp and money step
if global.stache_perk3=9{obj_target.text="15% extra damage"}//player make_bullet
if global.stache_perk3=10{obj_target.text="15% speed boost"} //player movement_step
if global.stache_perk3=11{obj_target.text="Locked chests open without keys"} //player contact chest

if flipflop=1{obj_target=hover4}else{obj_target=hover24}
if global.stache_perk4=0{obj_target.text="Stache power grants Extra Speed"}//player.step
if global.stache_perk4=1{obj_target.text="Stache power turns nearby enemies into chickens"}//controller. press Q
if global.stache_perk4=2{obj_target.text="Stache power makes you invincible"}//player.hurt_me() player.stomp_step()
if global.stache_perk4=3{obj_target.text="Stache power heals you to full HP"}//controler press Q
if global.stache_perk4=4{obj_target.text="Stache power adds 5 magazines to your weapon"}//controler press Q
if global.stache_perk4=5{obj_target.text="Stache power grants infinite jump"} //player.control_step
if global.stache_perk4=6{obj_target.text="Money is worth double"}//player collide with credit
if global.stache_perk4=7{obj_target.text="20% Defense boost"}//player.hurt_me() player.stomp_step()
if global.stache_perk4=8{obj_target.text="Pick up money and exp from a longer range"} //exp and money step
if global.stache_perk4=9{obj_target.text="15% extra damage"}//player make_bullet
if global.stache_perk4=10{obj_target.text="15% speed boost"} //player movement_step
if global.stache_perk4=11{obj_target.text="Locked chests open without keys"} //player contact chest

if flipflop=1{obj_target=hover5}else{obj_target=hover25}
if global.stache_perk5=0{obj_target.text="Stache power grants Extra Speed"}//player.step
if global.stache_perk5=1{obj_target.text="Stache power turns nearby enemies into chickens"}//controller. press Q
if global.stache_perk5=2{obj_target.text="Stache power makes you invincible"}//player.hurt_me() player.stomp_step()
if global.stache_perk5=3{obj_target.text="Stache power heals you to full HP"}//controler press Q
if global.stache_perk5=4{obj_target.text="Stache power adds 5 magazines to your weapon"}//controler press Q
if global.stache_perk5=5{obj_target.text="Stache power grants infinite jump"} //player.control_step
if global.stache_perk5=6{obj_target.text="Money is worth double"}//player collide with credit
if global.stache_perk5=7{obj_target.text="20% Defense boost"}//player.hurt_me() player.stomp_step()
if global.stache_perk5=8{obj_target.text="Pick up money and exp from a longer range"} //exp and money step
if global.stache_perk5=9{obj_target.text="15% extra damage"}//player make_bullet
if global.stache_perk5=10{obj_target.text="15% speed boost"} //player movement_step
if global.stache_perk5=11{obj_target.text="Locked chests open without keys"} //player contact chest

if flipflop=1{obj_target=hover6}else{obj_target=hover26}
if global.stache_perk6=0{obj_target.text="Stache power grants Extra Speed"}//player.step
if global.stache_perk6=1{obj_target.text="Stache power turns nearby enemies into chickens"}//controller. press Q
if global.stache_perk6=2{obj_target.text="Stache power makes you invincible"}//player.hurt_me() player.stomp_step()
if global.stache_perk6=3{obj_target.text="Stache power heals you to full HP"}//controler press Q
if global.stache_perk6=4{obj_target.text="Stache power adds 5 magazines to your weapon"}//controler press Q
if global.stache_perk6=5{obj_target.text="Stache power grants infinite jump"} //player.control_step
if global.stache_perk6=6{obj_target.text="Money is worth double"}//player collide with credit
if global.stache_perk6=7{obj_target.text="20% Defense boost"}//player.hurt_me() player.stomp_step()
if global.stache_perk6=8{obj_target.text="Pick up money and exp from a longer range"} //exp and money step
if global.stache_perk6=9{obj_target.text="15% extra damage"}//player make_bullet
if global.stache_perk6=10{obj_target.text="15% speed boost"} //player movement_step
if global.stache_perk6=11{obj_target.text="Locked chests open without keys"} //player contact chest
