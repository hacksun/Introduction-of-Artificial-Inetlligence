/* 2_1.pro */ 
  trace
  DOMAINS
      name=symbol
  PREDICATES
      likes(name,name).
      friend(name,name)
  GOAL
      friend(john,Y), write("Y=",Y).
  CLAUSES
      likes(bell,sports).
      likes(mary,music).
      likes(mary,sports).
      likes(jane,smith).
      friend(john,X):-likes(X,sports),likes(X,music).
      friend(john,X):-likes(X,reading),likes(X,music). 

