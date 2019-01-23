/*********************************************************************************
C�m... Oper�ci�kutat�s szoftveres p�ldat�r

3. fejezet 2./a feladat
**********************************************************************************/;

proc optmodel;
    /*V�ltoz�k*/
	var x integer;
    var y integer;

	/*Felt�telek defini�l�sa*/
	con F1: 3*x + 2*y <= 4;
	con F2:   x -   y <= 2;
	con F3: 2*x -   y >= 3;
	con nonneg:    x >= 0;
	con nonneg2:   y >= 0;

    /*Maximaliz�ci�s c�lfv. meghat�roz�sa*/
	max z= x + y ;

    /*A fel�p�tett modell megold�sa*/
	solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x;
	print y;
	
run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/;