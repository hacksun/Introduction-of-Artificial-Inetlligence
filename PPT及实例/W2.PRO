/*  w2. pro  */
trace
DOMAINS 
      person=symbol
PREDICATES
      male(person)
      smoker(person)
      vegetarian(person)
      sophie_could_date(person)
/* GOAL
    sophie_could_date(X) and
    write("a  possible date for sophie is ",X) and nl.
*/
CLAUSES
     male(joshua).    male(bill).
     male(tom).       smoker(guiseppe).
     smoker(tom).     vegetarian(joshua).
     vegetarian(tom).
   sophie_could_date(X) if male(X) and not(smoker(X)).
   sophie_could_date(X) if male(X) and vegetarian(X).
     /*         end        */
