# for the make variant used on the NFSN servers
.SUFFIXES: .svg .png
.svg.png:
	inkscape -f ${.IMPSRC} -e ${.TARGET}

# there must be a better way than this
SVGS!=echo *.svg
PNGS=${SVGS:.svg=.png}

all: $(PNGS)
	@echo Built. $(PNGS)

