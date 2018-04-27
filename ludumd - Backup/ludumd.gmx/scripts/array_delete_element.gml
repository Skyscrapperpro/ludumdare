var array = argument0;
var element = argument1;

var i = array_length_1d(array) - 1;
var prev = array[i];
var prev0 = array[i];
while (array[i] != element)
{
    prev0 = array[i];
    array[@i] = prev;
    prev = prev0;
    i--;
}
array[@i] = prev;

