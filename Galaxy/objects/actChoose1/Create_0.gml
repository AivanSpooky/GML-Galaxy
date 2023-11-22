/// @description Insert description here
// You can write your code in this editor
function sum(sp){
	s = 0
	for (i=0; i<array_length(sp); i++){
		s += sp[i]
	}
	return s
}
image_speed=0
if sum(database.progression[0]) == array_length(database.progression[0]){
	image_index=1
}else{
	image_index=2
}