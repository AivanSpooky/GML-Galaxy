/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
if gameOptions.gameStart{
	x = 10
	y = 900
	i = 0
	while i < gameOptions.hp{
		draw_self()
		x += 45
		i += 1
	}
}