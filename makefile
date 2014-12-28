
include $(TOPOST_PROJ_PATH)/makefile.comm

WIKI = $(wildcard *.wiki)
HTML = $(WIKI:%.wiki=%.html)
DIRS = $(HTML:%.html=%)

html: $(HTML)
	$(MAKE) -f makefile.subdir

clean:
	rm -f $(HTML) 
	rm -fr $(DIRS)
	$(MAKE) -f makefile.subdir clean
