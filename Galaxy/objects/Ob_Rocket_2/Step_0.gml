/// @description Insert description here
// You can write your code in this editor
if gameOptions.gameStart and exists{
	y+=1*v
	if instance_exists(Rocket){
		if abs(Rocket.x - x) > 20 and Rocket.y > y{
			if Rocket.x > x{
				x += 2
			}else if Rocket.x < x{
				x -= 2
			}	
		}
		if shotReady{
			shotReady = false
			alarm[1] = 60*(random_range(1, 2))
		}
	}
	
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