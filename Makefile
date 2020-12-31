# this is setup for a newer version of groff than
# what's included by default on OSX.  To get access
# to newer groff on OSX , either `brew install groff`
# or build it from #
# Current Linux versions have a new enough groff
# but some of them only install a very basic package
# and will require installing the more complete
# package instead.
#
# Why a newer package?  The ancient version (2005-ish)
# on OSX doesn't have PDF support.
GROFF=~/groff_install/bin/groff
GROFFOPTS=-Tpdf -mom -mpdfmark -t
FILE=scrooge.pdf documentation.pdf

%.pdf : %.mom macros.mom
	$(GROFF) $(GROFFOPTS) $< > $@

all: $(FILE)

clean:
	rm -fr $(FILE) *~
