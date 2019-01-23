/*********************************************************************************
C�m... Oper�ci�kutat�s szoftveres p�ldat�r

3. fejezet 3./b feladat
**********************************************************************************/;

proc optmodel;
    /*V�ltoz�k*/
	var x integer;
    var y integer;

	/*Felt�telek defini�l�sa*/
	con F1: 2*x +   y > -2;
	con F2:   x + 6*y <= 4;
	con F3: 4*x - 2*y <= 4;
	con nonneg: x < 0;

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