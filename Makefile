UHC-COMPILER = uhc
HASKELL-SRC = haskell-src
JAVA-TARGET = java-generated
JARS = ".:./../jars/libbase-3.0.0.0.jar:./../jars/libjazy.jar:./../jars/libuhcbase-1.1.9.5.jar:GhcVm.jar"

gen-java:
	cd $(HASKELL-SRC) && $(UHC-COMPILER) GhcVm.hs -t jazy --odir ../$(JAVA-TARGET)

run-java:
	cd $(JAVA-TARGET) && java -classpath $(JARS) GhcVm.GhcVm
