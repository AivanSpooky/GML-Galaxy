/// @description Insert description here
// You can write your code in this editor
function room_goto_dark(r, needLoad){
	if globalDark == 0{
		roomGo = r
		loadNeed = needLoad
		alarm[0] = 1;
		if room == mainMenu{
			mainMenu_play.alarm[0] = 1;
		}
	}
}
randomize()
roomGo = mainMenu
globalDark = 0
loadNeed = 0
depth=-100