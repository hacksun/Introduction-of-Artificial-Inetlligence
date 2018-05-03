/*    wlO. pro    */
/* Program: University Expert */
/* Purpose: To Show the working of an expert */
/* It is a production rule _based system */
/* Remark: This is a University classification expert system */
/* It uses a set of production rules for the*/
/*    purpose of inferring.           */
domains
database
    xpositive(symbol,symbol)
    xnegative(symbol,symbol)
predicates
    do_expert_job
    do_consulting
ask (symbol, symbol)
university_is (symbol)
it_is (symbol)
positive(symbol,symbol)
negative (symbol,symbol)
remember (symbol,symbol,symbol)
clear_facts
goal
    do_expert_job.
clauses
/* USER INTERFACE SYSTEM */
do_expert_job:-
   makewindow(1,7,7,"AN EXPERT SYSTEMS", 1, 16,15,58),
   nl,write(" ******************************************"),
   nl,write("  WELCOME TO UNIVERSITY EXPERT SYSTEM      "),
   nl,write(" This is a university identification system "),
   nl,write(" Please respond by typing in         "),
   nl, write("  'yes'  or  'no'.     Thank you      "),
   nl, write("                                      "),
   nl,write(" ******************************************"),
   nl, nl,
    do_consulting,
    write("Press space bar."),nl,
    readchar(_),
    clearwindow,
    exit.
do_consulting:-
    university_is(X),!,
    nl,write("Your university may be a(n) ",X,"."),nl,
    clear_facts.
do_consulting:-
    nl,write("Sorry, unable to determine the university."),nl,
    clear_facts.
ask(X,Y):-
    write("Question:-",X," it ",Y,"?"),
    readln(Reply),
    remember(X,Y,Reply).
/* INFERENCE BIGING */
positive(X,Y):- xpositive(X,Y), !.
positive(X,Y):- not(negative(X,Y)),!,ask(X,Y).
negative(X,Y):- xnegative(X,Y), !.
remember(X,Y,yes):- asserta(xpositive(X,Y)).
remember(X,Y,no):- asserta(xnegative(X,Y)),fail.
clear_facts:- retract(xpositive(_,_)),fail.
clear_facts:- retract(xnegative(_,_)),fail.
 /*  Production rules  */
  university_is("SiChuan University"):-
       it_is("985 or 211"),
       positive(has,"only one compus"),
       positive(has,"Postdoctoral flow point"),
       positive(has,"have national laboratory"),!.
  university_is("ChongQing University"):-
       it_is("985 or 211"),
       positive(has,"only one compus"),
       positive(has," Postdoctoral flow point"),
       positive(has,"have national laboratory"),!.
  university_is("HaiNan University"):-
       it_is("985 or 211"),
       positive(has," only one compus"),
       positive(has, " Postdoctoral flow point"),
       positive(has,"more than forty percent of students go to graduate school"),!.
  university_is("HeNan University"):-
       it_is("not 985 or 211"),
       positive(has,"only one compus"),
       positive(has,"Postdoctoral flow point"),
	   positive(has,"more than forty percent of students go to graduate school"),
       positive(has," high employment rate"),
	   positive(has,"have national laboratory"),!.
  university_is("XiaMen University"):-
       it_is("985 or 211"),
       positive(has," more than one compus"),
       positive(has," Postdoctoral flow point"),
       positive(has," high employment rate"),
       positive(has,"have national laboratory"),!.
  university_is("JiLin University"):-
       it_is("985 or 211"),
       positive(has,"more than one compus"),
	   positive(has,"more than forty percent of students go to graduate school"),
       positive(has," Postdoctoral flow point"),
	   positive(has,"have national laboratory"),!.
  university_is("ShangHai University"):-
       it_is("985 or 211"),
       positive(has," only one compus"),
       positive(has," Postdoctoral flow point"),
       positive(has," high employment rate"),
	   positive(has,"have national laboratory"),!.
  university_is("LanZhou University"):-
       it_is("985 or 211"),
       positive(has," more than one compus"),
       positive(has," Postdoctoral flow point"),
       positive(has,"have national laboratory"),
	   positive(has,"more than forty percent of students go to graduate school"),!.
  it_is("985 or 211"):- positive(has," 985 or 211"),!.
  it_is("not 985 or 211"):- positive(has," not 985 or 211"),!.
/*   end    */                                  

