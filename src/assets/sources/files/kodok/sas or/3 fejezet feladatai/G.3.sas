/*********************************************************************************
Oper�ci�kutat�s szoftveres p�ldat�r
I. Grafikusan megoldhat� feladatok

1. fejezet 3. feladat - Ruh�zati v�llalat
**********************************************************************************/

proc optmodel;
    /*V�ltoz�k*/
    number n;
    var x{1..n};
 	n= 2;

    /*Felt�telek defini�l�sa*/
   	con nonneg {i in 1..n}: x[i] >=0;
	con szab:   x[1] + x[2] <= 40,
		varr: 2*x[1] + x[2] <= 60;

    /*Maximaliz�ci�s c�lfv. lek�rdez�se*/
	MAX z = 4*x[1] + 3*x[2];

    /*A fel�p�tett modell megold�sa*/
    solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x;

run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/