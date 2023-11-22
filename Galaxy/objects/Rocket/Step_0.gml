/// @description Insert description here
// You can write your code in this editor
if gameOptions.gameStart{
	if image_index == 4{
		alarm[0] = 3
	}
	image_speed=0.5
}

function death(){
	dead = true
	instance_create_depth(x, y+sprite_height/2, -10, Ob_explosion)
	audio_play_sound(mediumDeath, 10, false)
	alarm[4] = 20
	alarm[2] = 10
}