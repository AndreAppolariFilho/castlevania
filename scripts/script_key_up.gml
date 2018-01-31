script_get_inputs();
script_apply_gravity();
if(key_z){
    state = st.throw_object;
}
if(key_up==0){
    state = st.normal;
}
if(place_meeting(x+hsp,y,obj_ladder) && !(state = st.in_stairs)){
    state = st.in_stairs;
    
 }

script_collide_and_move();
