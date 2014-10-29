all: hkm2014ESAPoster_materials.md hkm2014ESAPoster_materials.html hkm2014ESAPoster_materials.pdf 

hkm2014ESAPoster_materials.md: hkm2014ESAPoster_materials.Rmd
	Rscript -e "library(knitr); knit('hkm2014ESAPoster_materials.Rmd')"

hkm2014ESAPoster_materials.html: hkm2014ESAPoster_materials.md 
	pandoc -H format.sty -V fontsize=12pt --bibliography hkm2014.bib  hkm2014ESAPoster_materials.md -o hkm2014ESAPoster_materials.pdf

