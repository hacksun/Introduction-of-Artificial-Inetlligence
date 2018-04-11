/*   w1.pro    */
trace
DOMAINS
  person,subject=symbol
  age_year,college_year=integer
PREDICATES
   male(person)
   female(person)
   year(person,college_year)
   studies(person,subject)
   age(person,age_year)
clauses
  male(tim).      male(marc).     male(simon).
  female(louise). female(hazel).  female(marie).
  year(tim,4).    year(marc,1).
  year(simon,2).  year(louise,3).
  year(hazel,1).  year(marie,4).
  studies(tim,history).        studies(marc,philosophy).
  studies(simon,mathematics).  studies(louise,computer_science).
  studies(hazel,chemistry).    studies(marie,art).
  age(tim,24).    age(marc,18).
  age(simon,25).  age(louise,21).
  age(hazel,22).  age(maie,32).

/*    end       */






