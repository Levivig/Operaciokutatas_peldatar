/*********************************************************************************
C�m... Oper�ci�kutat�s szoftveres p�ldat�r

3. fejezet 3./a feladat
**********************************************************************************/;

proc optmodel;
    /*V�ltoz�k*/
	var x integer;
    var y integer;

	/*Felt�telek defini�l�sa*/
	con F1:   x +   y <= 6;
	con F2:-2*x + 6*y >  6;
	con F3:-5*x + 3*y <= 15;
	con nonneg:    x >= 0;
	con nonneg2:   y >  0;

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