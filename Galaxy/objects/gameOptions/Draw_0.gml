/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font1)
draw_set_alpha(1)
draw_self()
	
function newEnemy(ind){
	showNewEnemies[ind] = 1
	showNewEnemies_check[ind] = 0
	newEnemyC[ind] = newEnemyCnt
}

if gameStart == false{
	switch(actLevelnfo.act){
		case 1:
		switch(actLevelnfo.level){
			case 1:
			draw_set_font(Font1)
			draw_text(100, 100, "Earth-1")
			draw_text(150, 300, "Your first mission")
			draw_set_font(Font2)
			draw_text(200, 375, "- WASD - movement")
			draw_text(200, 410, "- SPACE - shoot")
			draw_text(200, 445, "- ENTER - START YOUR GAME")
			break
			case 2:
			draw_set_font(Font1)
			draw_text(100, 100, "Earth-2")
			draw_text(150, 300, "Go on! Protect your planet!")
			draw_set_font(Font2)
			draw_text(200, 375, "- WASD - movement")
			draw_text(200, 410, "- SPACE - shoot")
			draw_text(200, 445, "- ENTER - START YOUR GAME")
			break
		}
		break
		case 2:
		break
		case 3:
		break
		case 4:
		break
		case 5:
		break
		case 6:
		break
		case 7:
		break
	}
	
}

for (i=0; i<array_length(showNewEnemies); i++){
	show_debug_message(newEnemyC)
	if showNewEnemies[i] == 1{
			draw_set_font(Font2)
			draw_text(10, 200+100*(newEnemyC[i]), "New enemy!")
			switch (i){
				case 0:
					draw_sprite(Sprite10, 0, 220, 200+100*(newEnemyC[i]))
					if showNewEnemies_check[i] == 0{
						newEnemyCnt += 1
						spawnSprite_1.alarm[i] = 60*5
						showNewEnemies_check[i] = 1
					}
					break
				case 1:
					draw_sprite(Sprite1015, 0, 220, 200+100*(newEnemyC[i]))
					if showNewEnemies_check[i] == 0{
						newEnemyCnt += 1
						spawnSprite_1.alarm[i] = 60*5
						showNewEnemies_check[i] = 1
					}
					break
			}
	}
}