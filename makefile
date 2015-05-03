
include makefile.comm

WIKI = $(wildcard *.wiki)
HTML = $(WIKI:%.wiki=%.html)
DIRS = $(HTML:%.html=%)

html: $(HTML)
	$(MAKE) -f makefile.subdir

clean:
	rm -vf $(HTML) 
	rm -vfr $(DIRS)
	$(MAKE) -f makefile.subdir clean

install:
	vim -c "so % | quit" vimwiki/vimwiki-2-1.vba
	echo -e "\" topost config\nlet g:vimwiki_list = [{'path':'~/topost/', 'path_html': '~/topost/'}]" >> ~/.vimrc
	source ~/.bashrc
	echo topost install successfully.
	
