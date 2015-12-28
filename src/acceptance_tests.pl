:- begin_tests(suite).

:- use_module(library(semweb/rdf_db)).
:- use_module(main).
:- use_module(summary).
:- load_all.

test('should load simple akps') :- 
	akps('http://dbpedia.org/ontology/Film', 'http://dbpedia.org/ontology/director', 'http://dbpedia.org/ontology/Person', AKPs),
	length(AKPs, L),
	assertion( L = 61653).

test('should infer trivial akps') :- 
	occurrence('http://dbpedia.org/ontology/Film', 'http://dbpedia.org/ontology/director', 'http://dbpedia.org/ontology/PrimeMinister', L),
	assertion( L = 2).

:- end_tests(suite).
