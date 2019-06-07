if hp_timer>0
    {
    if room=room_level_lab
        {
        amount=(life-hits)/life
        draw_rectangle(x-(32*amount),y-32,x+(32*amount),y-28,0)
        }
    }
