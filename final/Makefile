
report.html:	clean_data/medals_cleaned.txt output/data_for_table.rds code/report.rmd
	cd code; Rscript -e "rmarkdown::render('report.rmd', output_file = '../output/report.html')"

#keeps top 10
clean_data/medals_cleaned.txt:	code/clean_data.R
	Rscript code/clean_data.R

#data for figure
bp.png:	clean_data/medals_cleaned.txt code/make_fig.R
	Rscript code/make_fig.R

#data for table
output/data_for_table.rds:	clean_data/medals_cleaned.txt code/make_table.R
	Rscript code/make_table.R
