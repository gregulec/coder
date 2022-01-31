all: main

coder.cmi: coder.mli
	ocamlc -c coder.mli
	
coder.cmo: coder.ml coder.cmi
	ocamlc -c coder.ml
	
main: coder.cmi coder.cmo
	ocamlc -o main coder.cmo main.ml
	
clean:
	rm -r *.cmo *.cmi main
