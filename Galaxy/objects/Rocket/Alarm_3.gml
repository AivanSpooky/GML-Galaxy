/// @description FINAL SECONDS
// You can write your code in this editor
instance_create_depth(x, y-sprite_height/2, -10, Ob_explosion, 
{
	image_xscale : 5,
    image_yscale : 5,
})
audio_play_sound(loudDeath, 10, false)
gameOptions.alarm[3] = 60*2
instance_destroy(self)