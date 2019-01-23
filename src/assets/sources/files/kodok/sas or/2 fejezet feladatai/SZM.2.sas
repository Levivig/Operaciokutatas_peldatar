/*********************************************************************************
Oper�ci�kutat�s szoftveres p�ldat�r

2. fejezet 2. feladat - Ty�kok takarm�nyoz�sa
**********************************************************************************/

proc optmodel;
 	number n;
    var x{1..n} >= 0 integer;
 	n= 2;   
	
	con Kukorica: 600*x[1] + 700*x[2] >= 80,
		Buza:     170*x[1] +  60*x[2] >= 20,
		Zab:      180*x[1] +  60*x[2] >= 15,
        Arpa:      50*x[1] + 180*x[2] >= 25;

	MIN z = 1500*x[1] + 1800*x[2];

	solve;

	print x;

run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 					2016
**********************************************************************************/