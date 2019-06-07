

if argument0=1
{
if image_single=0{slots.text="Hp Boost 10%"} //hurt_me()
if image_single=1{slots.text="Hp Boost 15%"} //hurt_me()
if image_single=2{slots.text="Hp Boost 20%"} //hurt_me()
if image_single=3{slots.text="Damage Boost 10%"} //make_bullet()
if image_single=4{slots.text="Damage Boost 15%"}  //make_bullet()
if image_single=5{slots.text="Damage Boost 20%"}  //make_bullet()
if image_single=6{slots.text="Reload speed boost 10%"}//ammo_step()
if image_single=7{slots.text="Reload speed boost 15%"}//ammo_step()
if image_single=8{slots.text="Reload speed boost 20%"}//ammo_step()
if image_single=9{slots.text="Speed + 10%"}//player.movement_step
if image_single=10{slots.text="Speed + 15%"}//player.movement_step
if image_single=11{slots.text="Speed + 20%"}//player.movement_step
if image_single=12{slots.text="fire rate + 10%"} //player.step
if image_single=13{slots.text="fire rate + 15%"} //player.step
if image_single=14{slots.text="firerate + 20%"} //player.step
if image_single=15{slots.text="Exp rate + 10%"} //player.collide.exp_orb
if image_single=16{slots.text="Exp rate +15%"}//player.collide.exp_orb
if image_single=17{slots.text="Exp rate +20%"}//player.collide.exp_orb
}

if argument0=2
{
if image_single=0{slots.text="Double Dash Distance"}//player.control_step()
if image_single=1{slots.text="Triple Jump"}//player.control_step()
if image_single=2{slots.text="Low Gravity"}//player.movement_step()
if image_single=3{slots.text="Longer knife"}//player.control_step()
if image_single=4{slots.text="Higher Jumps"}//player.control_step()
if image_single=5{slots.text="More ammo on pickup"}//random_gun.step
if image_single=6{slots.text="RAINBOW BULLETS"}//laser.step
if image_single=7{slots.text="Crates always drop a weapon"}//crate.destroy
if image_single=8{slots.text="Nearby enemies share your damage"}//player.hurt_me
if image_single=9{slots.text="5% chance to gain health from kills"}//player.hurt_me
if image_single=10{slots.text="start with a drone"}//play button
}

if argument0=3
{
if image_single=0{slots.text="Explosions heal you"}//explosion/explosion2.collide with player
if image_single=1{slots.text="Faster Knives"}//player.step
if image_single=2{slots.text="Piercing Pistol"}//make_bullet()
if image_single=3{slots.text="Dash attack"}//player,collide.enemy_parent
if image_single=4{slots.text="Longer Stache Power"}//controler.step
if image_single=5{slots.text="Explosive Leveling"}//controler
if image_single=6{slots.text="Extra inventory slot"}//play button event 0
if image_single=7{slots.text="2 Extra inventory slots"}//play button event 0
if image_single=8{slots.text="3 Extra inventory slots"}//play button event 0
if image_single=9{slots.text="Pistol shots bounce"}//shoot_gun1()
if image_single=10{slots.text="5% chance to gain ammo from kills"}//enemt_hurt
}
