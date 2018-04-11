/* 2_9.pro */

predicates
   road(symbol,symbol)
   path(symbol,symbol)
goal 
   path(a,X),write("X=",X),nl,fail.
clauses
   road(a,b).   road(a,c).   road(b,d).
   road(c,d).   road(d,e).   road(b,e).
   path(X,Y):-road(X,Y).
   path(X,Y):-road(X,Z),path(Z,Y). 
