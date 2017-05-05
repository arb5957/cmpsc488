///scr_save_settings

sdb("Saving settings");

var settings = ds_map_create();

settings[? "global_mute"] = global.mute;
settings[? "global_mute_sfx"] = global.mute_sfx;
ds_map_secure_save(settings, "settings.dat");
ds_map_destroy(settings);
