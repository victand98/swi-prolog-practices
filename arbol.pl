es_cebra:- es_ungulado, tiene_rayas_negras.

es_ungulado:- rumia, es_mamifero.

es_ungulado:- es_mamifero, tiene_pezunias.

es_mamifero.

tiene_pezunias.

tiene_rayas_negras.

% Invocar un fail
rumia:- fail.
