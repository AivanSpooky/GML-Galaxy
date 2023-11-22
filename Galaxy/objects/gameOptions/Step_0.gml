/// @description Insert description here
// You can write your code in this editor
function hpChange(delta){
	if delta < 0 and godmode == false{
		godmode = true
		hp_cell.image_speed=0.2
		audio_play_sound(mainHit, 10, false)
		alarm[1] = 10
		alarm[0] = 60
	}
}

if hp <= 0 and instance_exists(Rocket) and Rocket.dead == false{
	layer_vspeed(layer_get_id("Background"),1)
	Rocket.death()
}