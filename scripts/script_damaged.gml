script_apply_gravity();
if(sprite_index!=spr_damaged){
    life-=1;
    sprite_index = spr_damaged[0];
    hsp = image_xscale* moveSpeed;
    vsp = -jumpSpeed;
}
else{
    if(image_index = image_number -1 ){
        state = st.normal;
        hsp = 0;
        vsp = 0;
    }
    else{
        hsp = image_xscale* moveSpeed;
        vsp = -jumpSpeed;
     }
     if(place_meeting(x,y+vsp,obj_wall)){
        sprite_index = spr_damaged[1];
     }
}   
x+=hsp;
y+=vsp;
