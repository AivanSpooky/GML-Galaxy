/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1)
draw_set_font(Font1)
draw_self()
if gameOptions.gameStart and seconds > 0 and waveStart and waveFinish == false{
	draw_text(10,100,"Next wave in:"+ string(seconds))
}else if seconds <= 0 and waveStart and waveFinish == false{
	draw_text(10,100,"Wave:"+ string(wave)+"/"+string(database.levelWaveDB[act-1][level-1]))
}else if waveFinish{
	draw_text(10,100,"Wave completed!")
	if waveStart == false{
		for (i=0; i<array_length(gameOptions.showNewEnemies); i++){
			gameOptions.showNewEnemies[i] = 0
		}
		alarm[2] = 60*3
		waveStart = true
	}
}

if waveFinish == false and waveStart == false and  wave == database.levelWaveDB[act-1][level-1] + 1{
	draw_text(400,500,"Level completed!")
	if levelEnd == false{
		levelEnd = true
		database.progression[act-1][level-1] = 1
		gameOptions.alarm[3] = 60*2
	}
}