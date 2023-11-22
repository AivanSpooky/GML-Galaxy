/// @description Insert description here
// You can write your code in this editor
if fired == false and gameOptions.gameStart and dead == false and reload == false{
	instance_create_depth(x, y, 0, Ob_laser)
	fired = true
	ammo -= 1
	audio_play_sound(mainLaserShot, 10, false)
	alarm[1] = 15
}
if ammo <= 0 and reload == false{
	reload = true
	reloadHealthbar = 0
	alarm[6] = 10
	alarm[5] = 60*2
}