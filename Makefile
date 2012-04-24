all:
	./ghc flammablePig.hs

clean:
	rm -f *.hi
	rm -f *.o
	rm -f *.ass
	rm -f flammablePig
