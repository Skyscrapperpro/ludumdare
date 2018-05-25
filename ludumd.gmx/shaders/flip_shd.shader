attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//fragment shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec2 uvs_sum;
//x = (uv_left + uv_right) or 0 to ignore
//y = (uv_top + uv_bottom) or 0 to ignore
void main()
{
    vec2 finalCoord = vec2(abs(uvs_sum.x - v_vTexcoord.x), abs(uvs_sum.y - v_vTexcoord.y));
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, finalCoord );
}

