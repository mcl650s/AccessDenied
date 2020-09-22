varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float strength;
uniform sampler2D lux_tex;

//Variable Definitions
//      TEX_SIZE_IN_PX 256.0
#define CELLS_PER_ROW 8.0
#define CELL_SIZE 0.125
#define HALF_TEXEL_SIZE 0.000976562
#define CELL_SIZE_FIXED 0.123046875

void main()
{
    //Base Value Location
    vec4 base_col = texture2D(gm_BaseTexture, v_vTexcoord);
    float blue_cell = base_col.b * (CELLS_PER_ROW * CELLS_PER_ROW - 1.0);

    //Sample Coords
    vec2 lower_cell, lower_sample, upper_cell, upper_sample;
    lower_cell.y = floor(blue_cell / CELLS_PER_ROW);
    lower_cell.x = floor(blue_cell) - lower_cell.y * CELLS_PER_ROW;

    lower_sample.x = lower_cell.x * CELL_SIZE + HALF_TEXEL_SIZE + CELL_SIZE_FIXED * base_col.r;
    lower_sample.y = lower_cell.y * CELL_SIZE + HALF_TEXEL_SIZE + CELL_SIZE_FIXED * base_col.g;

    upper_cell.y = floor(ceil(blue_cell) / CELLS_PER_ROW);
    upper_cell.x = ceil(blue_cell) - upper_cell.y * CELLS_PER_ROW;

    upper_sample.x = upper_cell.x * CELL_SIZE + HALF_TEXEL_SIZE + CELL_SIZE_FIXED * base_col.r;
    upper_sample.y = upper_cell.y * CELL_SIZE + HALF_TEXEL_SIZE + CELL_SIZE_FIXED * base_col.g;

    //Output
    vec3 out_col = mix(texture2D(lux_tex, lower_sample).rgb, texture2D(lux_tex, upper_sample).rgb, fract(blue_cell));
    out_col = mix(base_col.rgb, out_col, strength);
    gl_FragColor = v_vColour * vec4(out_col, base_col.a);
}
