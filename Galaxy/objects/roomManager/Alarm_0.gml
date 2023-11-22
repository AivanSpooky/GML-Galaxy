/// @description Затемнение
// You can write your code in this editor
if globalDark < 1{
	globalDark += 0.01
	alarm[0] = 1
}else{
	if loadNeed{
		room_goto(loadScreen)
	} else{
		room_goto(roomGo)
		if roomGo == levelSelect{
			locked=0
			for (i=0; i<array_length(database.progression[actLevelnfo.act-1]); i++){
				var newObj = instance_create_depth(database.levelXY[actLevelnfo.act-1][i][0], database.levelXY[actLevelnfo.act-1][i][1], -10, levelChoose, {
					image_speed : 0,
					image_index : 3*i+database.progression[actLevelnfo.act-1][i]+locked
					})
				newObj.levelGo = i+1
				if database.progression[actLevelnfo.act-1][i] == 0{
					locked=2
				}
			}
		}
	}
	alarm[1] = 1
}