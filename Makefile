UHC-COMPILER = uhc
HASKELL-SRC = haskell-src
JAVA-TARGET = java-generated
JARS = .:./../jars/libbase-3.0.0.0.jar:./../jars/libjazy.jar:./../jars/libuhcbase-1.1.9.5.jar

EXAMPLE-NAMES = GhcVm.hs Problem1.hs

.SECONDEXPANSION:

gen-java: clear $(EXAMPLE-NAMES)

run-java: $(addsuffix .jar, $(basename $(EXAMPLE-NAMES)))

copy-jars:
	cd jars && rm *.jar
	cp /usr/local/lib/uhc-1.1.9.5/lib/jazy/libjazy.jar ./jars
	cp /usr/local/lib/uhc-1.1.9.5/lib/pkg//base-3.0.0.0/uhc-1.1.9.5/jazy/plain/libbase-3.0.0.0.jar ./jars
	cp /usr/local/lib/uhc-1.1.9.5/lib/pkg//uhcbase-1.1.9.5/uhc-1.1.9.5/jazy/plain/libuhcbase-1.1.9.5.jar ./jars

clear:
	cd $(JAVA-TARGET) && rm -r ./*

%.hs:
	cd $(HASKELL-SRC) && $(UHC-COMPILER) $@ -t jazy --odir ../$(JAVA-TARGET)

%.jar:
	cd $(JAVA-TARGET) && java -classpath "$(JARS):$@" $(basename $@).$(basename $@)
