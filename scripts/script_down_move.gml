script_get_inputs();
script_apply_gravity();
hsp = 0;
script_collide_and_move();
script_draw_down();
if (key_down == 0){
    state = st.normal;
    sprite_index = spr_idle;
}else if(key_z){
    state = st.attacking_down;
}
if(key_up) state = st.key_up;
