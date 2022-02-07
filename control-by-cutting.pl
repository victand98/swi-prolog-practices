nota(X, suspenso):- X < 5, !.
nota(X, aprobado):- X < 7, !.
nota(X, notable):- X < 9, !.
nota(X, sobresaliente).

% Calculate the height of a person in cm.
% > estatura(190, X).
% > X = muy_alta.
estatura(X, baja):- X < 150, !.
estatura(X, media):- X < 170, !.
estatura(X, alta):- X < 185, !.
estatura(X, muy_alta).
