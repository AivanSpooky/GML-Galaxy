/// @description Обратный отсчет
// You can write your code in this editor
if seconds > 0{
	seconds -= 1
	alarm[1] = 60
	if seconds == 0{
		enemySpawner.flag = true
		gameOptions.newEnemyCnt = 0
		gameOptions.newEnemyC = []
		for (i=0; i<array_length(database.enemySeen); i++){
			gameOptions.newEnemyC[0] = 0
		}
	}
}