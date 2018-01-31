script_apply_gravity();
hsp = 0;
if(image_index == 2){
    with(instance_create(x,y,obj_hitbox)){
        if(other.upgrade == 0)sprite_index = spr_hitbox_down;
        if(other.upgrade == 1)sprite_index = spr_hitbox_dow_1;
        if(other.upgrade >= 2)sprite_index = spr_dow_hitbox_2;
        image_xscale = other.image_xscale;
        with(instance_place(x,y,par_hit_obj)){
            if(hit == 0){
                hit = 1;
            }
        }
    }
    
}
script_collide_and_move();
script_draw_attack_down();
