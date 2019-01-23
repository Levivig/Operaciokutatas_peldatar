/*********************************************************************************
C�m... Oper�ci�kutat�s szoftveres p�ldat�r

3. fejezet 2. p�lda - LP feladat
**********************************************************************************/;

proc optmodel;
    /*V�ltoz�k*/
	var x integer;
    var y integer;

	/*Felt�telek defini�l�sa*/
	con F1: 4*x + 3*y >= 7;
	con F2:  -x + 2*y <= 6;
	con F3: 4*x + 6*y <= 36;
	con F4:   x - 2*y <= 4;
	con nonneg:    x >= 0;
	con nonneg2:   y >= 0;

    /*Maximaliz�ci�s c�lfv. meghat�roz�sa*/
	max z = 10*x + 4*y; /*68*/

    /*A fel�p�tett modell megold�sa*/
	solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x; /*6*/
	print y; /*2*/
	
run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/;