AS=xa
PROGRAM=4kkong
SOURCE=main.s
ASFLAGS=-C -W -e error.txt -l xa_labels.txt -DTARGET_TELEMON


$(PROGRAM): $(SOURCE)
	mkdir -p build/usr/bin/
	$(AS) $(SOURCE) $(ASFLAGS) -o build/usr/bin/$(PROGRAM)

test:
	echo nothing