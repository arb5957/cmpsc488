switch(state)
{
    //Be sure to set the state back to normal when changing rooms.
    case states.normal:
        script_execute(scr_char_move);
        break;
}
