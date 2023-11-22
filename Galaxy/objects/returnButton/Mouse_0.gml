/// @description Insert description here
// You can write your code in this editor
if room == actSelect{
	actLevelnfo.goback = true
	roomManager.room_goto_dark(mainMenu, 0)
}else if room == levelSelect{
	roomManager.room_goto_dark(actSelect, 0)
}