///print_2d_array(array,rows,cols);
var array = argument0;
var rows = argument1;
var cols = argument2;

for(var r = 0; r < rows; r++)
{
    var message = "";
    for(var c = 0; c < cols; c++)
    {
        message += string(array[r,c]) + " ";
    }
    show_debug_message(message);
}
