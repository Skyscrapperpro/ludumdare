///zigzag_to_target(target x, target y, x speed, y speed, cone angle, (initial xfactor))
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


if place_free(
