///draw_3dspr_angle(sprite, subimagen, x, y, z, xscale, yscale, rotation)

var sprite = argument0;
var subi = argument1;
var xpos = argument2;
var ypos = argument3;
var zpos = argument4;
var sclx = argument5;
var scly = argument6;
var ang = argument7;

d3d_transform_set_identity();
d3d_transform_add_rotation_x(90);
d3d_transform_add_rotation_z(ang);
d3d_transform_add_translation(xpos, ypos, zpos);

if ((global.sh_sup) && ((sclx * scly) < 0))
{
    var uvs = sprite_get_uvs(sprite, subi);
    shader_set(flip_shd);
    shader_set_uniform_f(shader_get_uniform(flip_shd, "uvs_sum"),
        (uvs[0] + uvs[2]) * (sclx < 0),
        (uvs[1] + uvs[3]) * (scly < 0));
    draw_sprite_ext(sprite, subi, 0, 0, abs(sclx), abs(scly), 0, -1, 1);
    shader_reset();
}
else draw_sprite_ext(sprite, subi, 0, 0, abs(sclx), abs(scly), 0, -1, 1);

d3d_transform_set_identity();

