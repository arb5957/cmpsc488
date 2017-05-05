can_activate = false;
activated = !activated;
if(activated)
{
    if(not global.mute_sfx)
    {
        if(not audio_is_playing(sfx_rainish))
        {
            audio_play_sound(sfx_rainish,1,true);
        }
    }
}
else
{
    if(audio_is_playing(sfx_rainish))
    {
        audio_stop_sound(sfx_rainish);
    }
}
alarm[COOLDOWN] = cooldown;
