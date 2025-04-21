pay(F, L, P) :- salaried(F,L,Salary), P is Salary.

pay(F, L, P) :-
    hourly(F, L, Hours, Rate),
    ( Hours =< 40 ->
        P is Hours * Rate
    ; Hours =< 50 ->
        P is (40 * Rate) + ((Hours - 40) * Rate * 1.5)
    ;   % Hours > 50
        P is (40 * Rate) + (10 * Rate * 1.5) + ((Hours - 50) * Rate * 2)
    ).


pay(F, L, P) :- commission(F, L, Min, Sales, Rate), 
                (Sales*Rate < Min -> P = Min ; P is Sales * Rate).