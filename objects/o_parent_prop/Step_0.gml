audio_emitter_position(emitter, x, y, 0); //update emitter position

vSpd += grav;												//Apply gravity force

collision();												//Apply movement

script_execute(state);