/// @description Insert description here
// You can write your code in this editor

function endWave(){
	if wave == database.levelWaveDB[act-1][level-1]{
		wave += 1
		waveFinish = false
		waveStart = false
		audio_play_sound(levelComplete, 10, false)
	}else{
		seconds = 5
		wave += 1
		waveFinish = false
		waveStart = false
	}
	
}
act = actLevelnfo.act
level = actLevelnfo.level
wave = 1
waveStart=false
waveFinish=false
seconds = 2
levelEnd = false