/*    work. pro    */
/* Program: where i should work */
/* Purpose: To find a corporation to work */

trace
DOMAINS
name=symbol
PREDICATES
SA(name,name).
WT(name,name).
WORK(name,name).
GOAL
WORK(X,i),write("I should work in",X).
CLAUSES
SA(huawei,high).
SA(baidu,high).
SA(zte,low).
SA(tencent,low).
WT(huawei,long).
WT(baidu,short).
WT(zte,short).
WT(tencent,long).
WORK(X,i):-SA(X,high),WT(X,short).
/*  end  */
