

dir=0
last_room=0


do
    {
    
    ds_grid_set_region(rooms_map,0,0,rooms_hor,rooms_vert,0)
    yy=round(rooms_vert/2)
    xx=0
    this_room=10//choose(10,7)
    last_room=this_room
    ds_grid_set(rooms_map,xx,yy,this_room)
    global.first_room_xx=xx
    global.first_room_yy=yy
    global.xx=xx
    global.yy=yy
    
    i=0
    hit=0
    x_o=0
    y_o=0
    done=0
    do
        {
        x_o=0
        y_o=0
        go=0
        //c=choose(1,2,3,4)
        if last_room=1{c=choose(1,2)}
        if last_room=2{c=choose(3,4)}
        if last_room=3{c=choose(3,1)}//down right
        if last_room=4{c=choose(3,2)}//down left
        if last_room=5{c=choose(4,1)}//up right
        if last_room=6{c=choose(4,2)}//up left
        if last_room=7{c=4}
        if last_room=8{c=3} //1 right- 2 left- 3-up 4-down
        if last_room=9{c=2}
        if last_room=10{c=1}
        
        //hit=1
        go=0
        if xx+1<rooms_hor{if c=1{if((ds_grid_get(rooms_map,xx+1,yy)=0)and(xx+1<rooms_hor)){hit=0 x_o+=1 go=1}else{hit+=1}}}
        if xx-1>-1{if c=2{if ((ds_grid_get(rooms_map,xx-1,yy)=0)and(xx-1>-1)){hit=0 x_o-=1 go=1}else{hit+=1}}}
        if yy+1<rooms_vert{if c=3{if ((ds_grid_get(rooms_map,xx,yy+1)=0)and(yy+1<rooms_vert)){hit=0 y_o+=1 go=1}else{hit+=1}}}
        if yy-1>-1{if c=4{if ((ds_grid_get(rooms_map,xx,yy-1)=0)and(yy-1>-1)){hit=0 y_o-=1 go=1}else{hit+=1}}}
        if go=1
            {
            this_room=99
            if last_room=1{if x_o>0{this_room=choose(1,4,6)}else{this_room=choose(1,3,5)}}
            if last_room=2{if y_o>0{this_room=choose(5,6)}else{this_room=choose(2,3,4)}}
            if last_room=3{if x_o>0{this_room=choose(1,4)}else{this_room=2}}
            if last_room=4{if x_o<0{this_room=choose(1,3)}else{this_room=2}}
            if last_room=5{if x_o>0{this_room=1}else{this_room=choose(2,3)}}
            if last_room=6{if x_o<0{this_room=choose(1,5)}else{this_room=choose(2,4)}}
            if last_room=7{this_room=choose(2,3,4)}
            if last_room=8{this_room=choose(2,5,6)}
            if last_room=9{this_room=choose(1,3,5)}
            if last_room=10{this_room=choose(1,4,6)}
            }
        if hit=0
            {
            xx+=x_o
            yy+=y_o
            ds_grid_set(rooms_map,xx,yy,this_room) i+=1 last_room=this_room
            }
        }
    until((hit>10)or(i>global.total_rooms))
    hit=0
    }
until(i>global.total_rooms)
if x_o>0{this_room=9 make_end()}if x_o<0{this_room=10 make_end()}
if y_o>0{this_room=7 make_end()}if y_o<0{this_room=8 make_end()}


ds_grid_set(rooms_map,xx,yy,this_room)
// 1= Hor hallway
// 2= vert hallway
// 3= Top Left
// 4= Top Right
// 5= Bottom Left
// 6= Bottom Right

/*
if val=7{ bottom_wall() right_wall() left_wall()} //topless
if val=8{top_wall() right_wall() left_wall()} //bottomless
if val=9{top_wall() bottom_wall() right_wall()} //leftless
if val=10{top_wall() bottom_wall() left_wall()} //rightless
