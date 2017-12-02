//Deactivation
instance_deactivate_all(true);
instance_activate_object(objMega_john);
instance_activate_object(objCamera);
//instance_activate_object(objCheckpoint);
//instance_activate_object(objSystemObj);
instance_activate_object(objBGcontrol);
instance_activate_region(camera_get_view_x(objCamera)-24,camera_get_view_y(objCamera)-16,camera_get_view_width(objCamera)+48,camera_get_view_height(objCamera)+32,true);
//if (instance_exists(ready_obj)) {instance_deactivate_object(enemyparent);}

