AS=xa
PROGRAM=4kkong
SOURCE=main.s
ASFLAGS=-C -W -e error.txt -l xa_labels.txt -DTARGET_TELEMON


$(PROGRAM): $(SOURCE)
	$(AS) $(SOURCE) $(ASFLAGS) -o $(PROGRAM)

test:
	mkdir -p build/usr/bin/
	mkdir -p build/usr/share/man
	mkdir -p build/usr/share/ipkg  
	cp $(PROGRAM) build/usr/bin/
	cp src/man/$(PROGRAM).hlp build/usr/share/man
  cp src/ipkg/$(PROGRAM).csv build/usr/share/ipkg
	echo nothing