/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font1)
draw_set_alpha(1)
draw_self()

if reload{
	draw_healthbar(x-sprite_width, y+sprite_height/2, x+sprite_width, y+sprite_height/2+10, reloadHealthbar, c_gray, c_red, c_green, 0, 1, 1)
}