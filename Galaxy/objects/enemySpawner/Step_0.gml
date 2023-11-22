/// @description Insert description here
// You can write your code in this editor
function Spawn(ob, ind){
	spawnList[ind] -= 1
	if database.enemySeen[ind] == 0{
		database.enemySeen[ind] = 1
		gameOptions.newEnemy(ind)
	}
	instance_create_depth(random_range(0+10, 1366-10), -100, 0, ob,{
		image_xscale : 2,
		image_yscale : 2,
	})
	delay[ind] = false
}
function sum(sp){
	s = 0
	for (i=0; i<array_length(sp); i++){
		s += sp[i]
	}
	return s
}

if array_length(spawnListCheck) > 0 and sum(spawnListCheck) == 0{
	spawnListCheck = []
	levelWaveSetup.waveFinish = true
	levelWaveSetup.waveStart = false
}

if levelWaveSetup.waveStart and levelWaveSetup.seconds == 0 and gameOptions.gameStart and levelWaveSetup.waveFinish == false{
	if flag{
		flag=false
		array_copy(spawnList, 0, database.spawnDB[levelWaveSetup.act-1][levelWaveSetup.level-1][levelWaveSetup.wave-1], 0, array_length(database.spawnDB[levelWaveSetup.act-1][levelWaveSetup.level-1][levelWaveSetup.wave-1]))
		array_copy(spawnListCheck, 0, database.spawnDB[levelWaveSetup.act-1][levelWaveSetup.level-1][levelWaveSetup.wave-1], 0, array_length(database.spawnDB[levelWaveSetup.act-1][levelWaveSetup.level-1][levelWaveSetup.wave-1]))
		delay=[]
		for (i=0; i<array_length(spawnList); i++){
			delay[i] = false
		}
	}
	for (i=0; i<array_length(spawnList); i++){
		for (j=0; j<spawnList[i]; j++){
			if delay[i] == false{
				delay[i] = true
				init(i)
			}
		}
	}
}