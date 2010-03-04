LANG1=mfe
LANG2=en
BASENAME=apertium-$(LANG1)-$(LANG2)
PREFIX1=$(LANG1)-$(LANG2)
PREFIX2=$(LANG2)-$(LANG1)

all:
	# Mauritian Creole -> English

	lt-comp lr $(BASENAME).mfe.dix $(PREFIX1).automorf.bin
	lt-comp lr $(BASENAME).$(PREFIX1).dix $(PREFIX1).autobil.bin
	lt-comp rl $(BASENAME).en.dix $(PREFIX1).autogen.bin

	# English -> Mauritian Creole

	lt-comp lr $(BASENAME).mfe.dix $(PREFIX2).automorf.bin
	lt-comp rl $(BASENAME).$(PREFIX1).dix $(PREFIX2).autobil.bin
	lt-comp rl $(BASENAME).en.dix $(PREFIX2).autogen.bin
 
clean:
	rm -f *.bin

