buffer_seek(default_buffer,buffer_seek_start, 0);//Take the buffer by the beginning
buffer_write(default_buffer, buffer_u16,MAKE_DUMMY);
buffer_write(default_buffer, buffer_u16,room_width/2);
buffer_write(default_buffer, buffer_u16,room_height/2);
network_send_packet(global.server_id, default_buffer, buffer_tell(default_buffer));
global.waiting=0
instance_create(room_width/2,room_height/2,player)
