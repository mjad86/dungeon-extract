//cleanup the emitter
//stop memory leak
audio_emitter_free(emitter);
ds_list_destroy(targetList);