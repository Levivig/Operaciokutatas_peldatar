/*********************************************************************************
Oper�ci�kutat�s szoftveres p�ldat�r
I. Grafikusan megoldhat� feladatok

3. fejezet 7. feladat - Szendvics k�sz�t�s
x1 - els� fajta szendvics 
x2 - m�sodik fajta szendvics
**********************************************************************************/

proc optmodel;
    /*V�ltoz�k*/
	number n;
    var x{1..n} integer;
 	n=2;

	/*Felt�telek defini�l�sa*/
	con vaj:     2*x[1] + 1*x[2]   <= 40;
	con sonka:   2*x[1]            <= 60;
	con szalami:        1.5*x[2]   <= 35;
	con sajt:    2*x[1] + 3*x[2]   <= 75;
	con uborka:  1*x[1] + 1*x[2]   <= 35;
   	con nonneg {i in 1..n}:   x[i] >=0;

    /*Maximaliz�ci�s c�lfv. lek�rdez�se*/
	max z= x[1]+x[2];

    /*A fel�p�tett modell megold�sa*/
	solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
	print x;
	
run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 							2016
**********************************************************************************/;