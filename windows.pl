:- use_module(library(pce)).

add(N1,N2,R):-atom_number(N1,N1a),atom_number(N2,N2a),Result is N1a+N2a,send(R,selection,Result).
substract(N1,N2,R):-atom_number(N1,N1a),atom_number(N2,N2a),Result is N1a-N2a,send(R,selection,Result).
product(N1,N2,R):-atom_number(N1,N1a),atom_number(N2,N2a),Result is N1a*N2a,send(R,selection,Result).
division(N1,N2,R):-atom_number(N1,N1a),atom_number(N2,N2a),Result is N1a/N2a,send(R,selection,Result).

:-new(Window, dialog('Ventana Ejemplo')),
    new(Tag, label(nombre, 'Operaciones')),
    new(Exit, button('SALIR', message(Window, destroy))),
    new(Number1, text_item('Numero 1:')),
    new(Number2, text_item('Numero 2:')),
    new(Result, text_item('Resultado:')),
    new(Add, button('Suma', message(@prolog, add, Number1?selection, Number2?selection, Result))),
    new(Substract, button('Resta', message(@prolog, substract, Number1?selection, Number2?selection, Result))),
    new(Product, button('Multiplicación', message(@prolog, product, Number1?selection, Number2?selection, Result))),
    new(Division, button('División', message(@prolog, division, Number1?selection, Number2?selection, Result))),

    send(Window, append, Tag),
    send(Window, append, Number1),
    send(Window, append, Number2),
    send(Window, append, Result),
    send(Window, append, Add),
    send(Window, append, Substract),
    send(Window, append, Product),
    send(Window, append, Division),
    send(Window, append, Exit),
    send(Window, open).
    