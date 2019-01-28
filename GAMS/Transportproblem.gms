* Klassisches Transportmodell

options
    optcr=0
;

set      i       Angebotsorte
         j       Nachfrageorte;

parameter
         A(i)    Angebot
         N(j)    Nachfrage
         c(i,j)  Kosten des Transports von i nach j;

variables
         Z       Zielfunktionswert;
positive variables
         x       Transportmengen;

Equations
Zielfunktion         Das ist die Zielfunktion
Angebot_abrufen(i)   Das Angebot muss abgerufen werden
Nachfrage_decken(j)  Die Nachfrage muss befriedigt werden;

Zielfunktion..
     Z =e= sum((i,j),c(i,j)*x(i,j));

Angebot_abrufen(i)..
     sum(j,x(i,j)) =e= A(i);

Nachfrage_decken(j)..
     sum(i,x(i,j)) =e= N(j);

model transport /all/;

* Daten der konkreten Instanz
$include 'GAMS/include.inc'

solve transport minimizing Z using lp;

file xij / 'GAMS/solution_xij.txt' /;
put xij;

loop(i,
    loop(j,
        put i.tl, j.tl, x.l(i,j) /;
        );
);

putclose xij;

file ofv / 'GAMS/ofv.txt' /;
put ofv Z.l;