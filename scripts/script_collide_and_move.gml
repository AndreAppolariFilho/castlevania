if(place_meeting(x+hsp,y,obj_wall)){
    while(!place_meeting(x+sign(hsp),y,obj_wall)){
        x += sign(hsp);
    }
    hsp = 0;
 }
 inst = place_meeting(x,y+vsp,obj_wall); 
if(inst){
    while(!place_meeting(x,y+sign(vsp),obj_wall)){
        y += sign(vsp);
    }
    
    vsp = 0;
 }
 
inst = instance_place(x, y, obj_heart);
if inst != noone{
    with(inst){
        other.points+=points;
        instance_destroy();
    }
   }
inst = instance_place(x, y, obj_whip_up);
if inst!= noone{
    with(inst){
        other.upgrade+=1;
        instance_destroy();
    }
}
inst = instance_place(x, y, par_secondary_weapon );
if inst!=noone{
    
    with(inst)  {
     switch(type){
        case weapon.no_weapon: other.weapon_hud = spr_null; break;
        case weapon.dagger: other.weapon_hud = spr_dagger;break;
     }
     instance_destroy();
     }
}

if(instance_place(x,y,par_enemy)){
    state = st.damaged;
            
        }

x+=hsp;
y+=vsp;

