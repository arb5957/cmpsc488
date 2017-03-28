///scr_bring_to_front(block);
var block = argument0;

//Note taht top_most_depth is set in obj_tetravex.
top_most_depth--;

block.depth = top_most_depth;
if(block.depth < -16000)
{
    top_most_depth = -1;
    block.depth = top_most_depth;
}
