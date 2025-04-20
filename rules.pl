pay(F, L, P) :- salaried(F,L,Salary), P is Salary.

pay(F, L, P) :- hourly(F,L,Hours,Rate), P is Hours*Rate.

pay(F, L, P) :- commission(F, L, Min, Sales, Rate), 
                (Sales*Rate < Min -> P = Min ; P is Sales * Rate).