audio_group_load(SFX);												//load SFX audio group
audio_group_load(Music);											//load SFX audio group

//set the reverb sfx for echos
audio_bus_main.effects[0] = audio_effect_create(AudioEffectType.Reverb1);
audio_bus_main.effects[0].bypass = false;
audio_bus_main.effects[0].size = 0.6;	//a value from 0 to 1, represent echo acording to room size, the closer to 1 the bigger the room reverb effect
audio_bus_main.effects[0].damp = 0.25;	//a value from 0 to 1, represents the damping of audio from soft object like cloth and such
audio_bus_main.effects[0].mix = 0.5;	//a value from 0 to 1, how much of the original sound will be heard.
