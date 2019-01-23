/*********************************************************************************
C�m... Oper�ci�kutat�s szoftveres p�ldat�r

3. fejezet 5. feladat
**********************************************************************************/;

proc optmodel;
    /*V�ltoz�k*/
	var x integer;
    var y integer;

	/*Felt�telek defini�l�sa*/
	con F1: 2*x + 2*y <= 8;
	con F2: 3*x +   y >= 8;
	con F3: 2*x <= 6;
	con F4:   y <= 3;

    /*Maximaliz�ci�s c�lfv. meghat�roz�sa*/
	min z = 2*x + 3*y; /*3*/

    /*A fel�p�tett modell megold�sa*/
	solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x; /*3*/
	print y; /*-1*/
	
run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/;