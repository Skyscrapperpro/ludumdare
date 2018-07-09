///zigzag_to_target(target x, target y, x speed, y speed, cone angle (script requires dir as variable))

//VARIABLE ASIGNMENT
var x1 = x;
var y1 = y;
var x2 = argument[0];
var y2 = argument[1];
var xs = argument[2];
var ys = argument[3];
var ang = argument[4];

var diry = sign(y2-y1);


//X DIR

if ((point_direction(x2,y2,x1,y1)>90+ang)&&(point_direction(x2,y2,x1,y1)<270-ang))
{
    dir = 1;
}
else
if ((point_direction(x2,y2,x1,y1)<90-ang)||(point_direction(x2,y2,x1,y1)>270+ang))
{
    dir = -1;
}

if (not(place_free(x+xs*dir,y))) //wall collisions
    dir=-dir;

//Y DIR

if (not(place_free(x+xs*dir,y+ys*diry))) //wall collisions
    diry=-diry;

//MOVEMENT
x=x+xs*dir;
y=y+ys*diry;
