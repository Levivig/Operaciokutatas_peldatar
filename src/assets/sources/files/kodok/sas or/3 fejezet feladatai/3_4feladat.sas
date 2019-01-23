/*********************************************************************************
C�m... Oper�ci�kutat�s szoftveres p�ldat�r

3. fejezet 4. feladat
**********************************************************************************/;

proc optmodel;
    /*V�ltoz�k*/
	var x integer;
    var y integer;

	/*Felt�telek defini�l�sa*/
	con F1: 4*x + 3*y >= 8;
	con F2: 2*x - 3*y >= 2;
	con F3: x <= 5;
	con F4: y >= 1;

    /*Maximaliz�ci�s c�lfv. meghat�roz�sa*/
	max z = 2*x - 4*y; /*6*/

    /*A fel�p�tett modell megold�sa*/
	solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x; /*5*/
	print y; /*1*/
	
run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/;