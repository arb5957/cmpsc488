///generate_floor_with_boss(number_of_cells);

//If number_of_cells == 1, we just have one room without any bosses.
//If number_of_cells == 2, the boss is right next to the starting room.
//If number_of_cells > 2, there is at least one room between the
//starting room and the boss room.
//The boss room is represented with a 4.
//The starting room is represented with a 3.
//A normal room is represented with a 1.

//Works on polyominoes that have a cell size < 4500 (approximately).

var cells = argument0;

if(cells < 2)
{
    var grid = ds_grid_create(1,1);
    ds_grid_set(grid, 1, 1, 3);
    return grid;
}

randomize();

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
var starting_room = irandom(cells-2);
    
var last_position = 0;
var ROW = 0;
var COL = 1;
var center_of_grid = cells;
possible[last_position,ROW] = center_of_grid;
possible[last_position,COL] = center_of_grid;
var pick = last_position;
show_debug_message("done initializing");

for(var i = 0; i < (cells-1); i++)
{
    var pick_row = possible[pick,ROW];
    var pick_col = possible[pick,COL];

    var last_row = possible[last_position,ROW];    
    var last_col = possible[last_position,COL];

    possible[pick,ROW] = last_row;
    possible[pick,COL] = last_col;
    last_position--;
    
    ds_grid_set(grid, pick_col, pick_row, 1);
    if(i == starting_room)
    {
        ds_grid_set(grid, pick_col, pick_row, 3);
    }
    
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

show_debug_message("Before adding boss room:");
print_grid(grid);

if(cells == 2)
{
    var pick_row = possible[pick,ROW];
    var pick_col = possible[pick,COL];
    ds_grid_set(grid, pick_col, pick_row, 4);
}
else
{
    var done = false;
    var temp_last_position = last_position;
    while(not done)
    {
        var pick_row = possible[pick,ROW];
        var pick_col = possible[pick,COL];
        
        var left_row = pick_row;
        var left_col = pick_col - 1;
        var right_row = pick_row;
        var right_col = pick_col + 1;;
        var up_row = pick_row - 1;
        var up_col = pick_col;
        var down_row = pick_row + 1;
        var down_col = pick_col;
        
        var left = ds_grid_get(grid, left_col, left_row);
        var right = ds_grid_get(grid, right_col, right_row);
        var up = ds_grid_get(grid, up_col, up_row);
        var down = ds_grid_get(grid, down_col, down_row);
        
        if(left == 3 || right == 3 || up == 3 || down == 3)
        {
            var last_row = possible[temp_last_position,ROW];    
            var last_col = possible[temp_last_position,COL];
            
            var temp_row = possible[pick,ROW];
            var temp_col = possible[pick,COL];
        
            possible[pick,ROW] = last_row;
            possible[pick,COL] = last_col;
            possible[temp_last_position,ROW] = temp_row;
            possible[temp_last_position,COL] = temp_col;
            temp_last_position--;
            pick = irandom(temp_last_position);
        }
        else
        {
            if(left == 0)
            {
                ds_grid_set(grid, left_col, left_row, 2);
                last_position++;
                possible[last_position,ROW] = left_row;
                possible[last_position,COL] = left_col;
            }
            if(right == 0)
            {
                ds_grid_set(grid, right_col, right_row, 2);
                last_position++;
                possible[last_position,ROW] = right_row;
                possible[last_position,COL] = right_col;
            }
            if(up == 0)
            {
                ds_grid_set(grid, up_col, up_row, 2);
                last_position++;
                possible[last_position,ROW] = up_row;
                possible[last_position,COL] = up_col;
            }
            if(down == 0)
            {
                ds_grid_set(grid, down_col, down_row, 2);
                last_position++;
                possible[last_position,ROW] = down_row;
                possible[last_position,COL] = down_col;
            }
            ds_grid_set(grid, pick_col, pick_row, 4);
            done = true;
        }
    }
}
show_debug_message("After adding boss room:");
print_grid(grid);
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
