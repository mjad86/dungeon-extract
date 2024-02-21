attribute vec3 in_Position;                  // (x,y,z)

uniform vec2 u_pos;	//light source position

const float len = 100000.;

varying float tdis;
varying float ldis;

void main() {
	vec2 pos = in_Position.xy;
	vec2 dis = pos - u_pos;
	float sdis = length(dis);
	if(in_Position.z > 1.) {	//check if vertex requires repositioning
		pos += dis/sdis * len;	//repositioning vertex with respect to light source
		tdis = in_Position.z-2.;
		ldis = 1.;
	}//end if
	else {
		ldis = sdis/len;
		tdis = mix(0.5, in_Position.z,ldis);
	}//end else
    vec4 object_space_pos = vec4( pos.x, pos.y, 0., 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    

}