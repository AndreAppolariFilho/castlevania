if(move != 0) image_xscale = -move;
if(upgrade == 0)sprite_index = spr_attack;
if(upgrade == 1)sprite_index = spr_attack_1;
if(upgrade >= 2)sprite_index = spr_attack_2;
//image_speed = 0.3;
if(image_index == 2) {
    state = st.normal;
    
}
