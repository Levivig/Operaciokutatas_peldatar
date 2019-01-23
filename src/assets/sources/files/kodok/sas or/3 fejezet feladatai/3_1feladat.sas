/*********************************************************************************
C�m... Oper�ci�kutat�s szoftveres p�ldat�r

3. fejezet 1. feladat
**********************************************************************************/;

proc optmodel;
    /*V�ltoz�k*/
	var x integer;
    var y integer;

	/*Felt�telek defini�l�sa*/
	con F1: 2*x + 3*y <= 6;
	con F2:   x -   y <= 1;
	con nonneg:    x >= 0;
	con nonneg2:   y >= 0;

    /*Maximaliz�ci�s c�lfv. meghat�roz�sa*/
	max z= x + y ;  /*2*/

    /*A fel�p�tett modell megold�sa*/
	solve;

	/*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x; /*1*/
	print y; /*1*/
	
run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 				       			2016
**********************************************************************************/;