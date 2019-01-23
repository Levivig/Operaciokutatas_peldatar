/*********************************************************************************
Oper�ci�kutat�s szoftveres p�ldat�r

2. fejezet 12. feladat - P�nzt�rosok alkalmaz�sa
**********************************************************************************/

proc optmodel;
 	number n;
    var x{1..n} >= 0 integer;
 	n = 7;   
	
	con Hetfo:     x[1] + x[4] + x[5] + x[6] + x[7] >= 21,
		Kedd:      x[1] + x[2] + x[5] + x[6] + x[7] >= 25,
		Szerda:    x[1] + x[2] + x[3] + x[6] + x[7] >= 17,
		Csutortok: x[1] + x[2] + x[3] + x[4] + x[7] >= 19,
		Pentek:    x[1] + x[2] + x[3] + x[4] + x[5] >= 28,
		Szombat:   x[2] + x[3] + x[4] + x[5] + x[6] >= 26,
		Vasarnap:  x[3] + x[4] + x[5] + x[6] + x[7] >= 20;

	MIN z = x[1] + x[2] + x[3] + x[4] + x[5] + x[6] + x[7];

	solve;

    print x;

run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 					2016
**********************************************************************************/