
    i=0
    ii=1
    
    xx=0
    yy=0
    //draw_set_color(image_blend)
    draw_primitive_begin_texture(pr_trianglelist,global.light_texture)
        repeat(360/quality)
        {
        draw_vertex_texture(x-view_xview[0],y-view_yview[0],0.5,0.5)
        draw_vertex_texture(point_x[i]-view_xview[0],point_y[i]-view_yview[0],0.5+(point_h[i]),0.5+(point_h[i]))
        draw_vertex_texture(point_x[ii]-view_xview[0],point_y[ii]-view_yview[0],0.5+(point_h[ii]),0.5+(point_h[ii]))
        i+=1
        ii+=1
        if ii=360/quality{ii=0}
        }
    draw_primitive_end()


