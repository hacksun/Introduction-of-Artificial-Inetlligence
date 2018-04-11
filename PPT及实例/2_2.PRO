/* 2_2.pro */
   trace
   PREDICATES
      student(integer, string, real)
      grade
   GOAL
      grade.
   CLAUSES 
      student(1,"101", 90.2). 
      student(2,"102", 95.5).
      student(3,"103", 96.4). 
      grade :- write("input name"), readln(Name), 
              student(_,Name,Score), 
              nl, write(Name,"score is",Score).
      grade :- write("sorry no-name!").