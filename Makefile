all:
		lt-comp lr apertium-mfe-en.mfe.dix mfe-en.automorf.bin
    	lt-comp lr apertium-mfe-en.mfe-en.dix mfe-en.autobil.bin
 		t-comp rl apertium-mfe-en.en.dix mfe-en.autogen.bin
 
clean:
 		rm mfe-en.automorf.bin mfe-en.autobil.bin mfe-en.autogen.bin

