if(move != 0) image_xscale = -move;
if(upgrade == 0) sprite_index = spr_down_attack;
if(upgrade == 1) sprite_index = spr_attack_down_1;
if(upgrade >= 2) sprite_index = spr_attack_down_2;
//image_speed = 0.3;
if(image_index == 2) {
    if(key_down)
        state = st.down;
    else 
        state = st.normal;
    
}
