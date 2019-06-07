//menu_cursor_move("left"/"right"/"up"/"down")

length_checks=500
total_checks=100
size_steps=8

if argument0="left"
{
    size=0
    i=0
    trys=0
    total_trys=0
    do
    {
        size+=size_steps
        do
        {
        i=collision_line(x-(trys+8),y-size,x-(trys+8),y+size,obj_menu_button_parent,1,1)
        if ((i>0)and(i.active=1)and(i!=last_snapped)){last_snapped=snapped snapped=i x=i.x y=i.y}
        trys+=1
        }until(((snapped>0)and(snapped!=last_snapped))or(trys>length_checks))
        trys=0
        total_trys+=1
    }until(((snapped>0)and(snapped!=last_snapped))or(total_trys>total_checks))
    last_snapped=snapped

}


if argument0="right"
{
    size=0
    i=0
    trys=0
    total_trys=0
    do
    {
        size+=size_steps
        do
        {
        i=collision_line(x+(trys+8),y-size,x+(trys+8),y+size,obj_menu_button_parent,1,1)
        if ((i>0)and(i.active=1)and(i!=last_snapped)){last_snapped=snapped snapped=i x=i.x y=i.y}
        trys+=1
        }until(((snapped>0)and(snapped!=last_snapped))or(trys>length_checks))
        trys=0
        total_trys+=1
    }until(((snapped>0)and(snapped!=last_snapped))or(total_trys>total_checks))
    last_snapped=snapped

}


if argument0="down"
{
    size=0
    i=0
    trys=0
    total_trys=0
    do
    {
        size+=size_steps
        do
        {
        i=collision_line(x-size,y+(trys+8),x+size,y+(trys+8),obj_menu_button_parent,1,1)
        if ((i>0)and(i.active=1)and(i!=last_snapped)){last_snapped=snapped snapped=i x=i.x y=i.y}
        trys+=1
        }until(((snapped>0)and(snapped!=last_snapped))or(trys>length_checks))
        trys=0
        total_trys+=1
    }until(((snapped>0)and(snapped!=last_snapped))or(total_trys>total_checks))
    last_snapped=snapped

}

if argument0="up"
{
    size=0
    i=0
    trys=0
    total_trys=0
    do
    {
        size+=size_steps
        do
        {
        i=collision_line(x-size,y-(trys+8),x+size,y-(trys+8),obj_menu_button_parent,1,1)
        if ((i>0)and(i.active=1)and(i!=last_snapped)){last_snapped=snapped snapped=i x=i.x y=i.y}
        trys+=1
        }until(((snapped>0)and(snapped!=last_snapped))or(trys>length_checks))
        trys=0
        total_trys+=1
    }until(((snapped>0)and(snapped!=last_snapped))or(total_trys>total_checks))
    last_snapped=snapped
}



