if (audio_group_is_loaded(audiogroup_Music))
{
if !audio_is_playing(snd_TestMusic)
{
audio_play_sound(snd_TestMusic,10,true);
audio_sound_gain(snd_TestMusic,.5,1);
}

}