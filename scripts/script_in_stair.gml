script_get_inputs();
move = key_left+key_right;
hsp = move * 1;
if(move != 0) image_xscale = -move;
script_apply_gravity();
if place_meeting(x+hsp,y,obj_ladder)
{
    yplus = 0;
    //&& yplus <= abs(1*hsp))
     
    while (place_meeting(x+hsp,y - yplus,obj_ladder))  yplus += 1;
    y -= yplus ;
   /* if place_meeting(x+hsp,y-yplus,obj_ladder)
    {
        while (!place_meeting(x+sign(hsp),y,obj_ladder)) x+=sign(hsp);
        hsp = 0;
    }
    else
    {
          
    }*/
}
inst = place_meeting(x,y+vsp,obj_ladder); 
if(inst){
    while(!place_meeting(x,y+sign(vsp),obj_ladder)){
        y += sign(vsp);
    }
    
    vsp = 0;
 }
 
x += (hsp);
y += vsp;
if place_meeting(x,y+vsp,obj_wall){
    state = st.normal;
}
//if(key_z) state = st.attacking;
if(key_down) state = st.normal;
//script_collide_and_move();
