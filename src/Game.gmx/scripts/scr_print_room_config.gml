///scr_print_room_config()

var line = "";
for (var r=0; r<grid_height; r++) {
    for(var c=0; c<grid_width; c++) {
        line = line + " " + string(ds_grid_get(room_config, c, r));
    }
    sdb(line);
    line = "";
}
