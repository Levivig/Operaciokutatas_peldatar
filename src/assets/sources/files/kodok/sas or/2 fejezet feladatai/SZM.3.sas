/*********************************************************************************
Oper�ci�kutat�s szoftveres p�ldat�r

2. fejezet 3. feladat - Pl�ss Mack�
**********************************************************************************/

proc optmodel;
 	number n;
    var x{1..n} >= 0 integer;
 	n = 3;   
	
	con Munka:   30*x[1] +  15*x[2] +  25*x[3] <= 35*60,
		Textil: 0.5*x[1] + 0.9*x[2] + 0.6*x[3] <= 70,
		Pamut:  100*x[1] + 200*x[2] + 350*x[3] <= 20000;

	MAX z = 300*x[1] + 450*x[2] + 500*x[3];

	solve;

	print x;

run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 					2016
**********************************************************************************/