/// @description Footsteps
//Below shows how to play random sounds.

if (sprite_index == sPlayerR) 
{
	audio_sound_pitch(snWalking,random_range(0.95,1.05));
	audio_play_sound(snWalking,1,false);
}