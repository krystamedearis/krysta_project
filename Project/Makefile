#rule for making report
report.html: medals.xlsx report.rmd bp.png pie.png
	Rscript -e "rmarkdown::render('report.rmd', quiet =TRUE)"

# rule for cleaning data
medals_cleaned.xlsx:	cleandata.R medals.xlsx
	Rscript cleandata.R

#rule for making figures
bp.png:	makefigures.R medals_cleaned.xlsx
	Rscript makefigures.R
pie.png:	makefigures.R	medals_cleaned.xlsx
	Rscript makefigures.R
