
include $(TOPOST_PROJ_PATH)/makefile.comm

OUTPUT = index.html

html: $(OUTPUT)
	$(MAKE) -f makefile.subdir

clean:
	rm -f $(OUTPUT)
	$(MAKE) -f makefile.subdir clean
