camera_set_view_size(view_camera[0],view_w+16,view_h+8);

var _round = view_w/surface_get_width(application_surface);
camera_set_view_pos(view_camera[0],round_n(view_x,_round),round_n(view_y,_round));

