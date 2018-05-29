///raycast_box(x1,y1,z1,x2,y2,z2,camx,camy,camz,camanglexy,camanglez)
//looks for the nearest intersecting point between a box (or a plane), aligned to the axis, and a 3d line defined by a point and two angles
//returns an array: [bool,x,y,z,dist], where the bool indicates the presence of collision

var x1 = argument0;             //first corner coordinates
var y1 = argument1;
var z1 = argument2;
var x2 = argument3;             //second corner coordinates (oposite to the first)
var y2 = argument4;
var z2 = argument5;
var originx = argument6;        //coordinates for the line origin ("camera")
var originy = argument7;
var originz = -argument8;
var xyangle = -argument9 - 90;  //horizontal angle for the camera
var zangle = argument10;        //vertical angle for the camera

var ret;                        //returned vector. defaults to false, so if there is no intersection, that's what it will return.
ret[4] = 0;                     //distance to intersection from camera
ret[3] = 0;                     //intersection coordinates (z)
ret[2] = 0;                     //intersection coordinates (y)
ret[1] = 0;                     //intersection coordinates (x)
ret[0] = false;                 //intersection bool

var xclose,yclose,zclose;       //closest box coordinate to the camera (it doesn't make sense to actually check both)
var xi,yi,zi,di;                //working variables for the return vector

//---LOOK FOR THE CLOSEST COORDINATES TO THE CAMERA---

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

//---INTERSECTION ANALYSIS ON EACH PLANE OF THE BOX---

//horizontal plane
zi=zclose;  //z is fixed on a horizontal plane
if (sin(degtorad(zangle)) != 0)     //if zangle=0, there is no way to hit an horizontal plane, as it has no vertical dimension
{
    di=-(zi-originz)/sin(degtorad(zangle)); //distance to the plane. usage of sin instead of sec is due to camera usage of cos instead of tan.
    xi=di*cos(degtorad(xyangle))+originx;   //x coordinate of intersection
    yi=di*sin(degtorad(xyangle))+originy;   //y coordinate of intersection
    if ((xi>min(x1,x2)) && (xi<max(x1,x2)) && (yi>min(y1,y2)) && (yi<max(y1,y2)))   //checking if the calculated point is indeed in the plane
    {
        ret[0]=true;    //if checking pass, set the return vector accordingly
        ret[1]=xi;
        ret[2]=yi;
        ret[3]=zi;
        ret[4]=di;
    }
}

//frontal plane. note that it is equivalent to the previously explained horizontal plane
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

//side plane. again, equivalent to the previous planes
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

return ret; //return the return vector.
