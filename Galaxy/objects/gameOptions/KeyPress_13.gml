/// @description Insert description here
// You can write your code in this editor
if (gameStart==false)
{
	randomize()
	layer_vspeed(layer_get_id("Background"),15)
	array_copy(showNewEnemies, 0, database.enemySeen, 0, array_length(database.enemySeen))
	gameStart = true
}