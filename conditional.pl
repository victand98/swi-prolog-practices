nota(X, R):-
    X < 5 -> R = suspenso,
    X < 7 -> R = aprobado,
    X < 9 -> R = notable,
    true -> R = sobresaliente.