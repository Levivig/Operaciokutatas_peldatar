/*********************************************************************************
Oper�ci�kutat�s szoftveres p�ldat�r
I. Grafikusan megoldhat� feladatok

1. fejezet 4. feladat - Jones farmer
**********************************************************************************/

proc optmodel;
    /*V�ltoz�k*/
    number n;
    var x{1..n};
 	n= 2;
    con nonneg {i in 1..n}: x[i] >=0;

    /*Felt�telek defini�l�sa*/
   	con Sutes: 20*x[1] + 40*x[2] <= 480,
		Tojas:  4*x[1] +    x[2] <= 30;

    /*Maximaliz�ci�s c�lfv. lek�rdez�se*/
	MAX z = x[1] + 0.5*x[2];

    /*A fel�p�tett modell megold�sa*/
    solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x;

run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/