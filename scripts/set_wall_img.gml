//

left=0
right=0
up=0
down=0

if place_meeting(x,y+1,small_wall){down=1}
if place_meeting(x,y-1,small_wall){up=1}
if place_meeting(x-1,y,small_wall){left=1}
if place_meeting(x+1,y,small_wall){right=1}


tile = tile_layer_find(global.tile_layer, x,y+32);
if tile_exists(tile) {down=1}

tile = tile_layer_find(global.tile_layer, x,y-32);
if tile_exists(tile) {up=1}

tile = tile_layer_find(global.tile_layer, x-32,y);
if tile_exists(tile) {left=1}

tile = tile_layer_find(global.tile_layer, x+32,y);
if tile_exists(tile) {right=1}

if x=0{left=1}
if y=0{up=1}
if x=room_width-32{right=1}
if y=room_height-32{down=1}




str=string(up)+string(down)+string(left)+string(right)


image_single=0
if str="0000" {image_single=15}// no sides
if str="0001" {image_single=1}//right only
if str="0010" {image_single=2}//left only
if str="1000" {image_single=3}//up only
if str="0100" {image_single=4}//down only
if str="0110" {image_single=5}//down and left
if str="0101" {image_single=6}//down and right
if str="1010" {image_single=7}//up and left
if str="1001" {image_single=8}//up and right
if str="0011" {image_single=9}//left and right
if str="1100" {image_single=10}//up and down
if str="1011" {image_single=11}//up left and right
if str="0111" {image_single=12}//down left and right
if str="1101" {image_single=13}//up down and right
if str="1110" {image_single=14}//up down and left
if str="1111" {image_single=0}// all 4 sides
