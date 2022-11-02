/// @description game music
audio_stop_sound(snTitleMenu);

if !(audio_is_playing(snGame_Music))
{
	audio_play_sound(snGame_Music,1000,true)
}
