.PHONY = all clean

IN := $(wildcard *.tex)
OUT := $(SRCS:%.tex=%.pdf)

all: ${OUT}

%.pdf: %.tex
	docker compose run spellcheck $<
	docker compose run texbox $(basename $< .tex)

clean:
	rm -rvf *.log *.aux *.bbl *.blg *.run.xml *.bcf *.out *.sum ${OUT}

distclean: clean
	rm -rvf *.pdf
