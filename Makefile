# for the make variant used on the NFSN servers
.SUFFIXES: .svg .png
.svg.png:
	convert ${.IMPSRC} -background white -flatten ${.TARGET}

# there must be a better way than this
SVGS!=echo *.svg
PNGS=${SVGS:.svg=.png}

all: $(PNGS)
	@echo Built. $(PNGS)

