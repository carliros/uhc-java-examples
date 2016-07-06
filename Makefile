UHC-COMPILER = uhc
HASKELL-SRC = haskell-src
JAVA-TARGET = java-generated
JARS = .:./../jars/libbase-3.0.0.0.jar:./../jars/libjazy.jar:./../jars/libuhcbase-1.1.9.5.jar

EXAMPLE-NAMES = GhcVm.hs Problem1.hs

.SECONDEXPANSION:

gen-java: clear $(EXAMPLE-NAMES)

run-java: clear gen-java $(addsuffix .jar, $(basename $(EXAMPLE-NAMES)))

clear:
	cd $(JAVA-TARGET) && rm -r ./*

%.hs:
	cd $(HASKELL-SRC) && $(UHC-COMPILER) $@ -t jazy --odir ../$(JAVA-TARGET)

%.jar:
	cd $(JAVA-TARGET) && java -classpath "$(JARS):$@" $(basename $@).$(basename $@)
