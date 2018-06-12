///sprite_get_speed(sprite)

var spd;
var spr = argument0;

switch (spr)
{
    //Customer animations
    case customer_walk:
        spd = 0.2;
        break;
    case customer_ded:
        spd = 0.25;
        break;
    case customer_talk:
        spd = 0.5;
        break;
    case customer_back:
        spd = 0.2;
        break;
    case girl_walk:
        spd = 0.2;
        break;
    case girl_ded:
        spd = 0.25;
        break;
    case girl_talk:
        spd = 0.5;
        break;
    case girl_back:
        spd = 0.2;
        break;
        
    //GUI
    case gameover:
        spd = 0.04;
        break;
    case gunshot:
        spd = 0.25;
        break;
    case life:
        spd = 0.125;
        break;
    case spatula_move:
        spd = 1;
        break;
        
    //Zombies
    case zombie:
        spd = 0.125;
        break;
    case zombie_ded:
        spd = 0.25;
        break;
    case zombie_attack:
        spd = 0.25;
        break;
        
    //Burgers
    case burger_grill0:
        spd = 0.125;
        break;
    case burger_grill1:
        spd = 0.125;
        break;
    case burger_grill2:
        spd = 0.125;
        break;
        
    //Timer
    case burger_timer:
        spd = (sprite_get_number(spr)/2)/TIME_TO_COOK;
        break;

    default:
        spd = 1;
        break;
}

return spd;

