/// @description Insert description here
// You can write your code in this editor
function init(num){
	switch (num){
		case 0:
			spawnCommander_1.alarm[num] = 30*random_range(1, 10)
			break
		case 1:
			spawnCommander_1.alarm[num] = 30*random_range(4, 6)
			break
	}
}

flag = true
spawnList = []
spawnListCheck = []
delay=[false]