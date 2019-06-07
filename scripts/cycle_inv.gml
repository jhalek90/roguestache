//select shit
ii=0
iii=0
do
{
my_slot+=argument0
ii=1
if my_slot>global.inventory_max_slots{my_slot=0}
if my_slot<0{my_slot=global.inventory_max_slots}
if global.inventory_item[my_slot]=99 {ii=0}
iii+=1
}
until((ii=1)or(iii>100))


global.inventory_selected=my_slot
global.gun=global.inventory_item[my_slot]
with(player){gun_setup()}
