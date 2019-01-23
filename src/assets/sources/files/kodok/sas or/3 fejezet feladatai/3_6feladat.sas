/*********************************************************************************
C�m... Oper�ci�kutat�s szoftveres p�ldat�r

3. fejezet 6. feladat
**********************************************************************************/;

proc optmodel;
    /*V�ltoz�k*/
	var x integer;
        var y integer;

	/*Felt�telek defini�l�sa*/
	con F1: -x +   y <= 1;
	con F2:  x - 2*y >= -4;
	con F3: x >= 0;
	con F4: y >= 0;

    /*Maximaliz�ci�s c�lfv. meghat�roz�sa*/
	max z = x + y;

    /*A fel�p�tett modell megold�sa*/
	solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x;
	print y;
	
run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/;