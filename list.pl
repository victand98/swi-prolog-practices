% List Examples

%# ?- long([1,2,3,4],L).
%# L = 4.
long([],0).
long([_|Xs],L):- long(Xs,L1),L is L1+1.

%# ?- interval(2,10,L).
%# L = [2, 3, 4, 5, 6, 7, 8, 9, 10] 
interval(X,X,[X]).
interval(X,Y,[X|Xs]):- X<Y, Z is X+1, interval(Z,Y,Xs).

%# ?- add([1,2,3],[4,5,6],L).
%# L = [1, 2, 3, 4, 5, 6].
add([],Ys,Ys).
add([X|Xs],Ys,[X|Zs]):- add(Xs,Ys,Zs).

%# ?- prefix([1,2],[1,2,3]).
%# true.
prefix(Xs,Ys):- add(Xs,_,Ys).

%# If a number is even
even(X):- 0 is X mod 2.
%# If a number is odd
odd(X):- 1 is X mod 2.

%# ?- interval(1,5,L),evenitems(L,EI).
%# L = [1, 2, 3, 4, 5],
%# EI = [2, 4] 
evenitems([],[]).
evenitems([X|Xs],[X|Ys]):- even(X), evenitems(Xs,Ys).
evenitems([X|Xs],Ys):- odd(X), evenitems(Xs,Ys).

%# ?- order([1,2,3]).
%# true ;
%# ?- order([3,1,2]).
%# false.
order([]).
order([_]).
order([X,Y|Ys]):- X<Y, order([Y|Ys]).
