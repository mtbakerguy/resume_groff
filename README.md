# A simple resume generation system in groff

To start with, ensure you have a version of groff installed that
supports PDF document generation. This typically won't be a problem
unless you are on OSX and trying to use the default that comes with
the os (typically fixable with a `brew install groff`).  On a Linux system, you may need to install the full groff
package as some distributions have a minimal installation that doesn't
include the full suite of macro sets.

To test your environment, you should just type `make
GROFF=path2yourgroff` and everything should build.

If you decide to clone the repository because you want to make
changes, you can keep your personal resume private but still use make
to build it.  Instead of just typing `make`, you'll type `make
yourresumefile.pdf` which will try to build _yourresumefile.mom_ into
your personal resume.

Motivation?  It was fun and LaTeX is a really heavy environment to install.
