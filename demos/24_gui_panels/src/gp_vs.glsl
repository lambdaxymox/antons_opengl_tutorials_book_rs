#version 460 core

in vec2 vp;
uniform mat4 view, proj;
out vec2 st;


void main() {
    st = (vp + 1.0) * 0.5;
    gl_Position = proj * view * vec4 (vp, 0.0, 1.0); //(10.0 * vp.x, -1.0, 10.0 * -vp.y, 1.0);
}
