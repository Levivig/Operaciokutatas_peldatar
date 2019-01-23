/*********************************************************************************
C�m... Oper�ci�kutat�s szoftveres p�ldat�r

3. fejezet 8. feladat - S�s �s �des s�ti rendel�s 
x1 - �des s�tem�ny
x2 - s�s s�tem�ny
**********************************************************************************/;

proc optmodel;
    /*V�ltoz�k*/
	var x1 integer;
    var x2 integer;

	/*Felt�telek defini�l�sa*/
	con liszt:    0.6*x1 +      x2  <= 15;
	con �leszt�: 0.05*x1 + 0.08*x2  <= 1;
	con cukor:    0.3*x1 + 0.02*x2  <= 2;
	con celfv:   2000*x1 + 1500*x2  <= 25000;
	con nonneg:  x1 >= 5;
	con nonneg2: x2 >= 6;

    /*Maximaliz�ci�s c�lfv. lek�rdez�se*/
	max z = 2000*x1 + 1500*x2; /*24000*/

    /*A fel�p�tett modell megold�sa*/
	solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x1; /*6*/
	print x2; /*8*/
	
run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/;