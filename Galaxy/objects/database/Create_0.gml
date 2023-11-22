/// @description Insert description here
// You can write your code in this editor

// Amount of Waves in Acts
/*
i - act index
j - level index
a[i][j] - wave number
*/
levelWaveDB = [
[5, 6, 7], // act-1
[2],  // act-2
[6], //act-3
[], //act-4
[], //act-5
[], //act-6
[] //act-7
]



levelXY=[
[[144,889], [476, 764], [834, 496], [770, 200], [287, 89]], // act-1
[0, 0, 0, 0, 0],  // act-2
[0, 0, 0, 0, 0], //act-3
[0, 0, 0, 0, 0], //act-4
[0, 0, 0, 0, 0], //act-5
[0, 0, 0, 0, 0], //act-6
[0, 0, 0, 0, 0], //act-7
]


// Opened Levels Database
/*
i - act index
j - level index
a[i][j] - true - completed; false - not
*/
progression=[
[0, 0, 0, 0, 0], // act-1
[0, 0, 0, 0, 0],  // act-2
[0, 0, 0, 0, 0], //act-3
[0, 0, 0, 0, 0], //act-4
[0, 0, 0, 0, 0], //act-5
[0, 0, 0, 0, 0], //act-6
[0, 0, 0, 0, 0], //act-7
]
ini_open("save.txt")
for (i=0; i<array_length(progression); i++){
	for (j=0; j<array_length(progression[i]); j++){
		progression[i][j] = ini_read_real("Progression", "A"+string(i+1)+"L"+string(j+1), 0)
	}
}
ini_close()
// Enemy Spawn Database
/*
Indexes and their meanings
0 - Rocket_1
1 - Rocket_2
*/
spawnDB = [ [ //first act start
[ //first level start
[1], // wave 1
[3], // wave 2
[5], // wave 3
[0, 1], // wave 4
[5, 1] // wave 5
] //first level end
], [ //first act end, second act start



] ]

// Bestarii database
/*
Checks if a player had met this enemy before
*/
enemySeen = [0, 0]




