#version 430 core

in vec3 pos;
//in vec3 norm;
//in uint inst_id;

//out vec3 f_norm;

uniform mat4 view;
uniform mat4 proj;

layout(rgba32f, binding = 1) uniform image3D img_output;

void main()
{
    //gl_Position = proj * view * vec4(pos, 1.0);
    gl_Position = vec4(pos, 1.0);

    //f_norm = norm;
}
