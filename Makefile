## Makefile for diarygrep
OS := $(shell { uname -o 2>/dev/null || uname -s; } | tr A-Z a-z)
ifneq (, $(filter darwin% %bsd,$(OS)))
  INSTALL = install -pCSv
else
  INSTALL = install -Cv
endif

BINDIR = ~/bin
FILES = diarygrep diarysplit

install:
	$(INSTALL) $(FILES) $(BINDIR)
