script_get_inputs();
if(weapon_hud!=spr_null){
    sprite_index = spr_throw_act;
    if(image_index >= 2){
        if(weapon_hud = spr_dagger){
            with(instance_create(x+sign(-other.image_xscale)*5,y,obj_throwable_dagger)){
                image_xscale = -other.image_xscale;
                hsp = sign(image_xscale)*hsp;
           
            }
                        
        }
        state = st.normal;
    }
}
script_apply_gravity();
script_collide_and_move();
