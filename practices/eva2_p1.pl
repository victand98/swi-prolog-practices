% Diseñar un árbol de derivación, y su posterior implementación de hechos y reglas en Prolog.

pertenece_a(terrestre, transporte).
pertenece_a(aereo, transporte).
pertenece_a(maritimo, transporte).

pertenece_a(auto, terrestre).
pertenece_a(moto, terrestre).
pertenece_a(bus, terrestre).
pertenece_a(bicicleta, terrestre).

pertenece_a(avion, aereo).
pertenece_a(helicoptero, aereo).

pertenece_a(barco, maritimo).
pertenece_a(submarino, maritimo).

es_transporte(X):- pertenece_a(X, Y), pertenece_a(Y, transporte).