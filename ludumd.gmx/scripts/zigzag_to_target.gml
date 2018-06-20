///zigzag_to_target(target x, target y, x speed, y speed, cone angle, (initial xfactor))

//VARIABLE ASIGNMENT
var x1 = x;
var y1 = y;
var x2 = argument[0];
var y2 = argument[1];
var xs = argument[2];
var ys = argument[3];
var ang = argument[4];

if (argument_count=6)
    var xf=argument[5];
else
    var xf=choose(-1,1);

var dirx = sign(x1-xprevious);
var diry = sign(y2-y1);


//X DIR

if ((point_direction(x2,y2,x1,y1)>90+ang)&&(point_direction(x2,y2,x1,y1)<270-ang))
{
    dirx = 1;
}

if ((point_direction(x2,y2,x1,y1)<90-ang)||(point_direction(x2,y2,x1,y1)>270+ang))
{
    dirx = -1;
}

if (not(place_free(x+xs*dirx,y))) //wall collisions
    dirx=-dirx;

//Y DIR

if (not(place_free(x+xs*dirx,y+ys*ydir))) //wall collisions
    diry=-diry;

//MOVEMENT
x=x+xs*dirx;
y=y+ys*ydir;
