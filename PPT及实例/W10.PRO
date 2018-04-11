/*    wlO. pro    */
/* Program: Dog Expert */
/* Purpose: To Show the working of an expert */
/* It is a production rule _based system */
/* Remark: This is a dog classification expert system */
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
dog_is (symbol)
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
   nl,write("  WELCOME TO AGOG EXPERT SYSTEM      "),
   nl,write(" This is a dog identification system "),
   nl,write(" Please respond by typing in         "),
   nl, write("  'yes'  or  'no'.     Thank you      "),
   nl, write("                                      "),
   nl, write ("***************************************"),
   nl, nl,
    do_consulting,
    write("Press space bar."),nl,
    readchar(_),
    clearwindow,
    exit.
do_consulting:-
    dog_is(X),!,
    nl,write("You dog may be a(n) ",X,"."),nl,
    clear_facts.
do_consulting:-
    nl,write("Sorry, unable to determine the dog."),nl,
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
  dog_is("English Bulldog"):-
       it_is("short-haired dog"),
       positive(has,"height under 22 inches"),
       positive(has,"low-set tail"),
       positive(has,"good natured personality"),!.
  dog_is("Beagle"):-
       it_is("short-haired dog"),
       positive(has,"height under 22 inches"),
       positive(has," long ears"),
       positive(has," good natured personality"),!.
  dog_is("Gread Dane"):-
       it_is("short-haired dog"),
       positive(has," low-set tail"),
       positive(has, " longer ears"),
       positive(has,"good natured personality"),
       positive(has, "weight over l001b"),!.
  dog_is("American Foxhound"):-
       it_is("short-haired dog"),
       positive(has,"height under 30 inches"),
       positive(has,"longer ears"),
       positive(has," good natured personality"),!.
  dog_is("Cocker Spaniel"):-
       it_is("long-haired dog"),
       positive(has," height under 22 inches"),
       positive(has," low-set tail"),
       positive(has," longer ears"),
       positive(has," good natured personality"),!.
  dog_is("Irish Setter"):-
       it_is("long-haired dog"),
       positive(has,"height under 30 inches"),
       positive(has," longer ears"),!.
  dog_is("Collie"):-
       it_is("long-haired dog"),
       positive(has," height under 30 inches"),
       positive(has," low-set tail"),
       positive(has," good natured personality"),!.
  dog_is(" St.Bernard"):-
       it_is("long-haired dog"),
       positive(has," low_set tail"),
       positive(has," good natured personality"),
       positive(has," weight over 100 lb"),!.
  it_is("short-haired dog"):- positive(has," short-haired"),!.
  it_is("long-haired dog"):- positive(has," long -haired"),!.
/*   end    */                                  

