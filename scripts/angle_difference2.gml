/*
**  usage:
**      diff = angle_difference(angle1,angle2);
**
**  given:
**      angle1    first direction in degrees, real
**      angle2    second direction in degrees, real
**
**  returns:
**      difference of the given angles in degrees, -180 to 180
**
**  GMLscripts.com
*/

a=argument0
b=argument1
{
    return ((((a - b) mod 360) + 540) mod 360) - 180;
}
