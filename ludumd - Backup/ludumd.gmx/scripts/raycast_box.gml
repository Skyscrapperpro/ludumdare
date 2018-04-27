//looks for the nearest point inside a box (or a plane) that's also in a 3d line defined from a point and two angles
//returns an array: [bool,x,y,z], where the bool indicates the presence of collision

var x1 = argument0;
var y1 = argument1;
var z1 = argument2;
var x2 = argument3;
var y2 = argument4;
var z2 = argument5;
var originx = argument6;
var originy = argument7;
var originz = argument8;
var xyangle = argument9;
var zangle = argument10;

var ret;
ret[0] = false;
ret[1] = 0;
ret[2] = 0;
ret[3] = 0;


