v=argument0*(global.shake_smount*2)

view_xview[0]+=-(v/2)+random(v)+lengthdir_x(-4,aim_dir)
view_yview[0]+=-(v/2)+random(v)+lengthdir_y(-4,aim_dir)

if global.shake_smount=1
    {
    view_angle[0]+=(((v/4)/2)+random((v/4)))*choose(1,-1)
    }
