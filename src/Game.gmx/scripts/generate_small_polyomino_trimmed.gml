///generate_small_polyomino_trimmed(number_of_cells);

//Works on polyominoes that have a cell size < 4500 (approximately).

var cells = argument0;

var rows = cells + cells + 1;
var cols = rows;
var grid;

grid = ds_grid_create(cols,rows);
ds_grid_clear(grid,0);
show_debug_message("width: " + string(rows) + " height: " + string(cols));

show_debug_message("done first init");
var possible;
var length = (cells * 3) + 1;

possible[length-1,0] = 0;
possible[length-1,1] = 0;

for(var i = 0; i < length; i++)
{
    for(var j = 0; j < 2; j++)
    {
        possible[i,j] = 0;
    }
}

var last_position = 0;
var ROW = 0;
var COL = 1;
var center_of_grid = cells;
possible[last_position,ROW] = center_of_grid;
possible[last_position,COL] = center_of_grid;
var pick = last_position;
show_debug_message("done initializing");

for(var i = 0; i < cells; i++)
{
    var pick_row = possible[pick,ROW];
    var pick_col = possible[pick,COL];

    var last_row = possible[last_position,ROW];    
    var last_col = possible[last_position,COL];

    possible[pick,ROW] = last_row;
    possible[pick,COL] = last_col;
    last_position--;
    
    ds_grid_set(grid, pick_col, pick_row, 1);

    
    //show_debug_message("pickrow " + string(pick_row) + " pickcol " + string(pick_col));
    
    var left_row = pick_row;
    var left_col = pick_col - 1;
    var right_row = pick_row;
    var right_col = pick_col + 1;;
    var up_row = pick_row - 1;
    var up_col = pick_col;
    var down_row = pick_row + 1;
    var down_col = pick_col;
    //show_debug_message("lrow " + string(left_row) + " lcol " + string(left_col));
    
    //if(grid[left_row, left_col] == 0)
    if(ds_grid_get(grid, left_col, left_row) == 0)
    {
        //grid[left_row, left_col] = 2;
        ds_grid_set(grid, left_col, left_row, 2);
        last_position++;
        possible[last_position,ROW] = left_row;
        possible[last_position,COL] = left_col;
    }
    
    //if(grid[right_row, right_col] == 0)
    if(ds_grid_get(grid, right_col, right_row) == 0)
    {
        //grid[right_row, right_col] = 2;
        ds_grid_set(grid, right_col, right_row, 2);
        last_position++;
        possible[last_position,ROW] = right_row;
        possible[last_position,COL] = right_col;
    }
    
    //if(grid[up_row, up_col] == 0)
    if(ds_grid_get(grid, up_col, up_row) == 0)
    {
        //grid[up_row, up_col] = 2;
        ds_grid_set(grid, up_col, up_row, 2);
        last_position++;
        possible[last_position,ROW] = up_row;
        possible[last_position,COL] = up_col;
    }
    
    //if(grid[down_row, down_col] == 0)
    if(ds_grid_get(grid, down_col, down_row) == 0)
    {
        //grid[down_row, down_col] = 2;
        ds_grid_set(grid, down_col, down_row, 2);
        last_position++;
        possible[last_position,ROW] = down_row;
        possible[last_position,COL] = down_col;
    }
    
    pick = irandom(last_position);
}

//print_grid(grid);

//Find bounding box.
var min_row = possible[0,ROW];
var min_col = possible[0,COL];
var max_row = min_row;
var max_col = min_col;

for(var i = 0; i <= last_position; i++)
{
    if(possible[i,ROW] < min_row)
    {
        min_row = possible[i,ROW];
    }
    if(possible[i,ROW] > max_row)
    {
        max_row = possible[i,ROW];
    }
    if(possible[i,COL] < min_col)
    {
        min_col = possible[i,COL];
    }
    if(possible[i,COL] > max_col)
    {
        max_col = possible[i,COL];
    }
}

possible = 0;

show_debug_message("min: (" + string(min_col) + "," + string(min_row) + ")");
show_debug_message("max: (" + string(max_col) + "," + string(max_row) + ")");


max_row--;
max_col--;
min_row++;
min_col++;

var final_grid_rows = max_row - min_row + 1;
var final_grid_cols = max_col - min_col + 1;

show_debug_message("width " + string(final_grid_cols) + " height " + string(final_grid_rows));

final_grid = ds_grid_create(final_grid_cols,final_grid_rows);
ds_grid_set_grid_region(final_grid,grid,min_col,min_row,max_col,max_row,0,0);

ds_grid_destroy(grid);

return final_grid;
