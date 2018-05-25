//looks for the nearest point inside a box (or a plane) that's also in a 3d line defined from a point and two angles
//returns an array: [bool,x,y,z,dist], where the bool indicates the presence of collision

var x1 = argument0;
var y1 = argument1;
var z1 = argument2;
var x2 = argument3;
var y2 = argument4;
var z2 = argument5;
var originx = argument6;
var originy = argument7;
var originz = -argument8;
var xyangle = -argument9 - 90;
var zangle = argument10;

var ret;
ret[4] = 0;
ret[3] = 0;
ret[2] = 0;
ret[1] = 0;
ret[0] = false;

var xclose,yclose,zclose;
//var xi,yi,zi,di;

if (abs(originx-x1)<abs(originx-x2))
{
    xclose=x1;
}
else
{
    xclose=x2;
}

if (abs(originy-y1)<abs(originy-y2))
{
    yclose=y1;
}
else
{
    yclose=y2;
}

if (abs(originz-z1)<abs(originz-z2))
{
    zclose=z1;
}
else
{
    zclose=z2;
}

//horizontal plane
zi=zclose;
if (sin(degtorad(zangle)) != 0)
{
    di=-(zi-originz)/sin(degtorad(zangle));
    xi=di*cos(degtorad(xyangle))+originx;
    yi=di*sin(degtorad(xyangle))+originy;
    if ((xi>min(x1,x2)) && (xi<max(x1,x2)) && (yi>min(y1,y2)) && (yi<max(y1,y2)))
    {
        ret[0]=true;
        ret[1]=xi;
        ret[2]=yi;
        ret[3]=zi;
        ret[4]=di;
    }
}

//frontal plane
xi=xclose;
if (cos(degtorad(xyangle)) != 0)
{
    di=(xi-originx)/cos(degtorad(xyangle));
    zi=di*sin(degtorad(zangle))+originz;
    yi=di*sin(degtorad(xyangle))+originy;
    if ((zi>min(z1,z2)) && (zi<max(z1,z2)) && (yi>min(y1,y2)) && (yi<max(y1,y2)) && ((ret[0]==false) || (ret[4]>di)))
    {
        ret[4]=di;
        ret[3]=zi;
        ret[2]=yi;
        ret[1]=xi;
        ret[0]=true;
    }
}

//side plane
yi=yclose;
if (sin(degtorad(xyangle)) != 0)
{
    di=(yi-originy)/sin(degtorad(xyangle));
    zi=di*sin(degtorad(zangle))+originz;
    xi=di*cos(degtorad(xyangle))+originx;
    if ((zi>min(z1,z2)) && (zi<max(z1,z2)) && (xi>min(x1,x2)) && (xi<max(x1,x2)) && ((ret[0]==false) || (ret[4]>di)))
    {
        ret[4]=di;
        ret[3]=zi;
        ret[2]=yi;
        ret[1]=xi;
        ret[0]=true;
    }
}

return ret;
