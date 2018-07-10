///weighted_choose(disponibility index, default weight, 1 index, 1 weight, 2 index, 2 weight...)
var max_weighted_result = (argument_count/2)-1;
var chancearray;
var chancearray_index;

chancearray[0]=argument[1]-1;

for (chancearray_index = 1; chancearray_index <= max_weighted_result; chancearray_index+=1)
{
    if (argument[0]>=argument[2*chancearray_index])
    {
        chancearray[chancearray_index]=chancearray[chancearray_index-1]+argument[2*chancearray_index+1];
    }
    else chancearray[chancearray_index]=chancearray[chancearray_index-1];
}

var weighted_chance = irandom(chancearray[max_weighted_result])

var weighted_result = 0; //in case something went wrong, return default

for (chancearray_index = max_weighted_result; chancearray_index >=0; chancearray_index-=1)
{
    if (weighted_chance <= chancearray[chancearray_index]) weighted_result = chancearray_index;
}
return weighted_result;
