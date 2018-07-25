/// @description add rain affect in the background



//Rain System
partRain_sys = part_system_create();

//Rain Particle
partRain = part_type_create();
part_type_shape(partRain,pt_shape_line);
part_type_size(partRain,0.2,0.3,0,0);
part_type_color2(partRain,c_teal, c_white);
part_type_alpha2(partRain,.5,.1);
part_type_gravity(partRain,0.1,290);
part_type_speed(partRain,0.5,0.5,0,0);
part_type_direction(partRain,250,330,0,1);
part_type_orientation(partRain,290,290,0,0,0);
part_type_life(partRain,20,180);

//Puddle Particle
partPuddle = part_type_create();
part_type_shape(partPuddle,pt_shape_circle);
part_type_size(partPuddle,0.5,0.8,.01,0);
part_type_scale(partPuddle,.5,.1);
part_type_color1(partPuddle,c_silver);
part_type_alpha2(partPuddle,.4,0);
part_type_speed(partPuddle,0,0,0,0);
part_type_direction(partPuddle,0,0,0,0);
part_type_gravity(partPuddle,0,270);
part_type_life(partPuddle,50,60);

//Set Sequence
part_type_death(partRain,1,partPuddle);

//Create Emitter
partRain_emit = part_emitter_create(partRain_sys);
part_emitter_region(partRain_sys,partRain_emit,view_x-800,view_w,view_y-1100, view_y-1100,ps_shape_line,ps_distr_linear);
part_emitter_stream(partRain_sys,partRain_emit,partRain,30);

//Advance System
repeat (room_speed * 3){
    part_system_update(partRain_sys);
}

