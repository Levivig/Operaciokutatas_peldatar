

/*********************************************************************************
Oper�ci�kutat�s szoftveres p�ldat�r

4. fejezet 6. feladat - Fasz�ll�t�s
**********************************************************************************/;

proc optmodel;
    /*V�ltoz�k*/

    var x11 >= 0, x12 >= 0, x13 >= 0, x14  >= 0; 
    var x21 >= 0, x22 >= 0, x23 >= 0, x24  >= 0;
    var x31 >= 0, x32 >= 0, x33 >= 0, x34  >= 0;
    var x41 >= 0, x42 >= 0, x43 >= 0, x44  >= 0;

    /*Felt�telek defini�l�sa*/
    /*Kapacit�s*/
    con Miskolc:     x11 + x12 + x13 + x14  <= 1400;
    con Salg�tarj�n: x21 + x22 + x23 + x24  <= 600;
    /*Ig�ny*/
    con Szeged:      x11 + x21 + x31 + x41 >= 1100;
    con B�k�scsaba:  x12 + x22 + x32 + x42 >= 900;
    /*T�rol�si kapacit�s*/
    con Kecskem�t:   x13 + x23 <= 400;
    con Szolnok:     x14 + x24 <= 600;
    /*Elvitel*/
    con Kecskem�t1:  x13 + x23 - x31 - x32 = 0;
    con Szolnok1:    x14 + x24 - x41 - x42 = 0;

    /*Minimaliz�ci�s c�lfv. meghat�roz�sa*/
    min z= 56*x11 + 62*x12 + 24*x13 + 27*x14
        +  73*x21 + 69*x22 + 28*x23 + 30*x24
        +  29*x31 + 36*x32
        +  26*x41 + 44*x42;

    /*A fel�p�tett modell megold�sa*/
    solve;

    /*A v�ltoz�k �rt�k�nek a lek�rdez�se*/
    print x11;
    print x12;
    print x13;
    print x14;
    print x21;
    print x22;
    print x23;
    print x24;
    print x31;
    print x32;
    print x33;
    print x34;
    print x41;
    print x42;
    print x43;
    print x44;

run;

/*********************************************************************************
Debreceni Egyetem, Informatikai Kar 					2016
**********************************************************************************/;