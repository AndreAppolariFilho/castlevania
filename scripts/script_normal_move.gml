script_get_inputs();
move = key_left+key_right;
hsp = move * moveSpeed;
script_apply_gravity();

if(key_z) state = st.attacking;
if(key_down) state = st.down;
if(key_up) state = st.key_up;
script_collide_and_move();
if(place_meeting(x,y+1,obj_wall)){
    vsp = key_jump * -jumpSpeed;
    y+=vsp;
}
script_draw_normal_move();
