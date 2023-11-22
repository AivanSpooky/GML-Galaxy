/// @description Shoot
// You can write your code in this editor
if instance_exists(Rocket) and exists and Rocket.y > y{
	instance_create_depth(x, y, 0, Ob_enemylaser1)
	audio_play_sound(mainLaserShot, 10, false)
	shotReady = true
}