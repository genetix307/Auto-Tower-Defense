// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function effect_btn(){
btnEffect=instance_create_depth(x,y,depth-10,effect_btn_press)
btnEffect.myHeight=sprite_height
btnEffect.myWidth=sprite_width
}