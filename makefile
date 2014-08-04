all: hkm2014ESAPoster.md hkm2014ESAPoster.html hkm2014ESAPoster.pdf 

hkm2014ESAPoster.md: hkm2014ESAPoster.Rmd
	Rscript -e "library(knitr); knit('hkm2014ESAPoster.Rmd')"

hkm2014ESAPoster.html: hkm2014ESAPoster.md 
	pandoc -H format.sty -V fontsize=12pt --bibliography hkm2014.bib  hkm2014ESAPoster.md -o hkm2014ESAPoster.pdf

