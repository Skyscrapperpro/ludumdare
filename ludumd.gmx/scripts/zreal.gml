//returns the real angle from a vertical orientation angle based on sin instead of tan

var zangle = argument0;
var zr = radtodeg(arctan(sin(degtorad(zangle))));

return zr;
