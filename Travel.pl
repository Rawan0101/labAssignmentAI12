% Rawan Alqattan - FS2
edge('Makkah','Madinah').
edge('Makkah','Riyadh').
edge('Madinah','Makkah').
edge('Madinah','Taif').
edge('Madinah','Tabuk').
edge('Taif','Tabuk').
edge('Taif','Dammam').
edge('Tabuk','Taif').
edge('Riyadh','Dammam').
edge('Dammam','Riyadh').
edge('Dammam','Qatif').
edge('Qatif','Dammam').
edge('Qatif','Madinah').

travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

path(X, X, P, P).
path(X, Y, V, P) :-
    edge(X, Z),
    not(member(Z, V)),
    path(Z, Y, [Z|V], P).
