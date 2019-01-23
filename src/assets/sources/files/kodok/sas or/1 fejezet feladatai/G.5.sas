/*********************************************************************************
Oper�ci�kutat�s szoftveres p�ldat�r
I. Grafikusan megoldhat� feladatok

1. fejezet 5. feladat - B�torgy�r asztalok
**********************************************************************************/

proc optmodel;
    /*V�ltoz�k*/
    number n;
    var x{1..n} >= 0;
 	n= 2;

    /*Felt�telek defini�l�sa*/
    con Profit: x[1] + 2*x[2] >= 6, 
		Fpor:  -x[1] +   x[2] <= 3,
		Rag:    x[1] +   x[2] <= 10;

    /*Maximaliz�ci�s c�lfv. lek�rdez�se*/
	MAX z = 2*x[1] - 3*x[2];

    /*A fel�p�tett modell megold�sa*/
    solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x;

run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/