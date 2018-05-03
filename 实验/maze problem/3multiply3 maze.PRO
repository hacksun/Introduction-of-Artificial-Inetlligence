DOMAINS
    state=symbol
DATABASE-mydatabase
    open(state,integer)
    closed(integer,state,integer)  
    res(state)
    mark(state)
    fail_
PREDICATES
    solve
    search(state,state)
    result
    searching
    step4(integer,state)
    step56(integer,state)
    equal(state,state)
    repeat
    resulting(integer)
    rule(state,state)
    road(state,state) 
GOAL
    solve.
CLAUSES
    solve:- search(v1,v9),result. 
search(Begin,End):-      
    retractall(_,mydatabase),
    assert(closed(0,Begin,0)), 
    assert(open(Begin,0)), 
    assert(mark(End)),
    repeat,
    searching,!. 
result:-				
    not(fail_),
    retract(closed(0,_,0)),
    closed(M,_,_),
    resulting(M),!.
result:- beep,write("I'm sorry don't find a road!").
searching:- 
    open(State,Pointer),         
    retract(open(State,Pointer)), 
    closed(No, _, _),No2=No+1,           
    asserta(closed(No2,State,Pointer)),  
    !,step4(No2,State). 
searching:- assert(fail_). 
 
step4(_,State):- mark(End),equal(State,End). 
step4(No,State):- step56(No,State),!,fail.    
step56(No,StateX):-  
    rule(StateX,StateY), 
    not(open(StateY,_)),  
    not(closed(_,StateY,_)),
    assertz(open(StateY,No)), 
    fail.
step56(_,_):- !.    
equal(X,X).
repeat.
repeat:- repeat. 
resulting(N):- closed(N,X,M),asserta(res(X)),resulting(M).
resulting(_):- res(X),write(X),nl,fail.
resulting(_):- !.
rule(X,Y):- road(X,Y).   
road(v1,v2).
road(v2,v5).road(v2,v1).
road(v5,v8).road(v5,v2).road(v5,v4).
road(v4,v7).road(v4,v5).
road(v7,v8).road(v7,v4).
road(v8,v9).road(v8,v5).road(v8,v7).
road(v3,v6).
road(v6,v9).road(v6,v3).
road(t,v6).road(v6,v8).