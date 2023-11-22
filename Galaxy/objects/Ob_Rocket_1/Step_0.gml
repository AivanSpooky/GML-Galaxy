/// @description Insert description here
// You can write your code in this editor
if gameOptions.gameStart and exists{
	y+=1*v
}

if hp <= 0{
	if exists{
		instance_create_depth(x, y, -10, Ob_explosion,{
			image_speed : 10
		})
		audio_play_sound(mediumDeath, 10, false)
		alarm[0] = 30
	}
	exists=false
	
}