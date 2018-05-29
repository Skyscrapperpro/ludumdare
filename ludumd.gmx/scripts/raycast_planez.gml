///raycast_planez(x1,y1,z,x2,y2,camx,camy,camz,camanglexy,camanglez)
var x1 = argument0;             //first corner coordinates
var y1 = argument1;
var zclose = argument2;
var x2 = argument3;             //second corner coordinates (oposite to the first)
var y2 = argument4;
var originx = argument5;        //coordinates for the line origin ("camera")
var originy = argument6;
var originz = argument7;
var xyangle = -argument8 - 90;  //horizontal angle for the camera
var zangle = argument9;        //vertical angle for the camera

var ret;                        //returned vector. defaults to false, so if there is no intersection, that's what it will return.
ret[4] = 0;                     //distance to intersection from camera
ret[3] = 0;                     //intersection coordinates (z)
ret[2] = 0;                     //intersection coordinates (y)
ret[1] = 0;                     //intersection coordinates (x)
ret[0] = false;                 //intersection bool

var xclose,yclose;       //closest box coordinate to the camera (it doesn't make sense to actually check both)
var xi,yi,zi,di;                //working variables for the return vector (make public for debug commenting this line)

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

return ret; //return the return vector.
