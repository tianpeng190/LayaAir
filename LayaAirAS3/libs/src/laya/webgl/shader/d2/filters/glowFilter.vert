attribute vec4 position;
attribute vec2 texcoord;
uniform vec2 size;
uniform  mat4 mmat;
uniform  mat4 pmat;
varying vec2  v_texcoord;
void main(){
 gl_Position =mmat*vec4((position.x/size.x-0.5)*2.0,(0.5-position.y/size.y)*2.0,position.z,1.0);
  v_texcoord = texcoord;
}