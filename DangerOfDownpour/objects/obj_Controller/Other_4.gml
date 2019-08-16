/// @description Insert description here
// You can write your code in this editor
//masterVolumeValue = 0;
//musicVolumeValue = 0;
//sfxVolumeValue = 0;

audio_master_gain(masterVolumeValue);
audio_group_set_gain(audiogroup_Music, musicVolumeValue, 0);
audio_group_set_gain(audiogroup_SoundEffects, sfxVolumeValue, 0);