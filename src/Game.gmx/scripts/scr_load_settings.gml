///scr_load_settings();
sdb("Loading settings");

if(file_exists("settings.dat"))
{
    var settings = ds_map_secure_load("settings.dat")
    global.mute = settings[? "global_mute"];
    global.mute_sfx = settings[? "global_mute_sfx"];
    ds_map_destroy(settings);
}
