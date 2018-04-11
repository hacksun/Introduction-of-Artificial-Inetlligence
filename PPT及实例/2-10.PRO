/*  2_10.pro  */     
domains
   n,f=integer
predicates
   factorial(n,f)
goal
   readint(I), 
   factorial(I,F), 
   write(I,"!=",F). 
clauses
   factorial(1,1).
   factorial(N,Res):- N>0,N1=N-1,
                      factorial(N1,FacN1),
                      Res=N*FacN1. 
   
