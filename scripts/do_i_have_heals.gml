
/*
98=heart
97=key
*/

halt=0

i=1
repeat(9)
{

if (global.inventory_item[i]=98)and(halt=0)
{
global.inventory_item[i]=99
global.life=100 
halt=1
global.usedaheart=1
powerup=60
powerup2=60
}

i+=1
}

if halt=0{ you_died()}
