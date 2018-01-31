if(move != 0) image_xscale = -move;
if(place_meeting(x,y+1,obj_wall)){
    if(hsp == 0){
        sprite_index = spr_idle;
    }else{
        if(sprite_index!=spr_walking) image_index = 0;
        sprite_index = spr_walking;
        image_speed = 0.5;
    }
}else{
    if(vsp<0){
        sprite_index = spr_jump;
    }else{
        sprite_index = spr_fall;
    }
}
