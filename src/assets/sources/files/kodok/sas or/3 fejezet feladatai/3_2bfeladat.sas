/*********************************************************************************
C�m... Oper�ci�kutat�s szoftveres p�ldat�r

3. fejezet 2./b feladat
**********************************************************************************/;

proc optmodel;
    /*V�ltoz�k*/
	var x integer;
    var y integer;

	/*Felt�telek defini�l�sa*/
	con F1: 4*x + 14*y >= 14;
	con F2:   x -  4*y <= 14;
	con F3: 4*x +  3*y <= 15;
	con F4:-11*x + 5*y >= 55;

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