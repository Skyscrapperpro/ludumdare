///sprite_get_speed(sprite)

var _spr = argument0;
switch (_spr)
{
    //Customer animations
    case customer_walk:
        return 0.2;
        break;
    case customer_ded:
        return 0.25;
        break;
    case customer_talk:
        return 0.5;
        break;
    case customer_back:
        return 0.2;
        break;
    case girl_walk:
        return 0.2;
        break;
    case girl_ded:
        return 0.25;
        break;
    case girl_talk:
        return 0.5;
        break;
    case girl_back:
        return 0.2;
        break;
        
    //GUI
    case gameover:
        return 0.04;
        break;
    case gunshot:
        return 0.25;
        break;
    case life:
        return 0.125;
        break;
    case spatula_move:
        return 1;
        break;
        
    //Zombies
    case zombie:
        return 0.15;
        break;
    case zombie_ded:
        return 0.25;
        break;
    case zombie_attack:
        return 0.25;
        break;
    
    case kidz:
        return 0.15;
        break;
    case kidz_ded:
        return 0.25;
        break;
    case kidz_attack:
        return 0.25;
        break;
        
    case fatz:
        return 0.15;
        break;
    case fatz_ded:
        return 0.25;
        break;
    case fatz_attack:
        return 0.25;
        break;
        
    //Burgers
    case burger_grill0:
        return 0.125;
        break;
    case burger_grill1:
        return 0.125;
        break;
    case burger_grill2:
        return 0.125;
        break;
        
    //Timer
    case burger_timer:
        return (sprite_get_number(_spr)/2)/TIME_TO_COOK;
        break;

    default:
        return 1;
        break;
}

