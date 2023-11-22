/// @description Insert description here
// You can write your code in this editor
ini_open("save.txt")
for (i=0; i<array_length(database.progression); i++){
	for (j=0; j<array_length(database.progression[i]); j++){
		ini_write_real("Progression", "A"+string(i+1)+"L"+string(j+1), (database.progression[i][j]))
	}
}
ini_close()