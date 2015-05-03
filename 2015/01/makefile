
include ../../makefile.comm

WIKI = $(wildcard *.wiki)
HTML = $(WIKI:%.wiki=%.html)
DIRS = $(HTML:%.html=%)

html: $(HTML)

clean:
	rm -vf $(HTML) 
	rm -vfr $(DIRS)
