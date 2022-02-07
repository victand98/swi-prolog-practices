% Ventanas - Método burbuja
% Autores:
%   - Maria Anabel Encalada Córdova
%   - Víctor Andrés Rojas Curimilma

:- use_module(library(pce)).

burbuja(L,S):- 
    mover(L,L1),%Cambiar
    !, %break
    write(L1),
    nl,
    burbuja(L1,S). 
burbuja(S,S).

mover([X,Y|Ys],[Y,X|Ys]):- 
    X>Y.
mover([Z|Zs],[Z|Zs1]):- 
    mover(Zs,Zs1).

metodo_burbuja(L):- 
    atom_to_stem_list(L,L1a),
    burbuja(L1a,S),
    atomic_list_concat(S, ',', Atom),
    atom_string(Atom, String),
    string_concat('La lista ordenada es: ', String, X),
    write(X),
    nl.
 

:-new(Window, dialog('Ventana - Actividad en Clase')),
    new(Exit, button('Salir', message(Window, destroy))),
    new(Tag, label(nombre, 'Ordenar Listas - Método Burbuja')),
    new(Input, text_item('Lista de entrada (Separar por comas):')),

    new(Buble, button('Método Burbuja', message(@prolog, metodo_burbuja, Input?selection))),

    send(Window, append, Tag),
    send(Window, append, Input),
    send(Window, append, Buble),
    send(Window, append, Exit),
    send(Window, open).
    