/* 2_7.pro */
trace
domains
   m=symbol
predicates
   p(m)
   q(m)
   r(m)
clauses    
    p(a).  p(b).   q(b).               
    r(X):- p(X),!,q(X).   
    r(c).
