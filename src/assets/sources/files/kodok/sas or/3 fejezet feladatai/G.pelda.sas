/*********************************************************************************
Oper�ci�kutat�s szoftveres p�ldat�r
I. Grafikusan megoldhat� feladatok

1. fejezet 1. p�lda - B�torgy�rt�s
x1 - szekr�ny: h�ny darab szekr�nyt gy�rtunk 1 �v alatt 
x2 - asztal:   h�ny darab asztalt gy�rtunk 1 �v alatt
**********************************************************************************/

proc optmodel;
    /*V�ltoz�k*/
	number n;
    var x{1..n} integer;
 	n=2;

	/*Felt�telek defini�l�sa*/
	con munka:   10*x[1] + 15*x[2] <= 1300,
	    butorlap: 5*x[1] +  3*x[2] <= 400 ,
	    asztal:               x[2] <= 70  ,
   	    nonneg {i in 1..n}:   x[i] >=0;

    /*Maximaliz�ci�s c�lfv. meghat�roz�sa*/
	max z= (100000-25000)*x[1] + (75000-20000)*x[2] ;  /*6550000*/

    /*A fel�p�tett modell megold�sa*/
	solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x;

run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/