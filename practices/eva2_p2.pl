% Diseñar un programa de ordenamiento, aplicando el método de QuickSort.

metodo_quicksort([], []).
metodo_quicksort([Cabeza|Cola], ListOrdenada) :- pivote(Cabeza, Cola, Lista1, Lista2), metodo_quicksort(Lista1, ListaOrdenada1), metodo_quicksort(Lista2, ListaOrdenada2), append(ListaOrdenada1, [Cabeza|ListaOrdenada2], ListOrdenada).

pivote(_, [], [], []).
pivote(Pivote, [Cabeza|Cola], [Cabeza|MenorOIgualA], MayorA) :- Pivote >= Cabeza, pivote(Pivote, Cola, MenorOIgualA, MayorA). 
pivote(Pivote, [Cabeza|Cola], MenorOIgualA, [Cabeza|MayorA]) :- pivote(Pivote, Cola, MenorOIgualA, MayorA).