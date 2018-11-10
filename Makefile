INPUT=lettre.md
OUTPUT=lettre.pdf
TEMPLATE=template-lettre.tex
DEP=$(wildcard *.sty *.jpg *.png) $(TEMPLATE) default.ins lettre.cls

$(OUTPUT): $(INPUT) $(DEP) 
	pandoc --template=$(TEMPLATE) $(INPUT) -o $(OUTPUT) 

clean:
	rm -f $(OUTPUT)
