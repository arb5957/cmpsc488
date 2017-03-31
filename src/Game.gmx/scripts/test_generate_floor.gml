///scr_test_generate_floor();
for(var i = 0; i < 10; i++)
{
    var cells = irandom_range(4,10);
    var level = generate_floor(cells);
    show_debug_message("cells: " + string(cells));
    print_grid(level);
    ds_grid_destroy(level);
}
