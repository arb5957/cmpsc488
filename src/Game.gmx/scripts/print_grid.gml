///print_grid(grid);

var grid = argument0;
var rows = ds_grid_height(grid);
var cols = ds_grid_width(grid);

for(var r = 0; r < rows; r++)
{
    var message = "";
    for(var c = 0; c < cols; c++)
    {
        message += string(ds_grid_get(grid,c,r)) + " ";
    }
    show_debug_message(message);
}
