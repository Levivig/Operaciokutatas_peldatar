/*********************************************************************************
Oper�ci�kutat�s szoftveres p�ldat�r
I. Grafikusan megoldhat� feladatok

1. fejezet 6. feladat - Tejgazdas�g
**********************************************************************************/

proc optmodel;
    /*V�ltoz�k*/
    number n;
    var x{1..n};
 	n= 2;

    /*Felt�telek defini�l�sa*/
	con HELY: 5*(10+x[1]) + 4*(20+x[2]) <= 160,
		KTG:  5*(10+x[1]) + 3*(20+x[2]) <= 150,
		TEHEN: 	 10+x[1] 				>= 0,
		KECSKE: 			   20+x[2]  >= 0;

    /*Maximaliz�ci�s c�lfv. lek�rdez�se*/
	MAX z = 10*100*(10+x[1]) + 3*150*(20+x[2]);

    /*A fel�p�tett modell megold�sa*/
    solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x;

run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/