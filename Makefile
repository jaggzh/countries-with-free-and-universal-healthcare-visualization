plot:
	cat gnuplot.gp | gnuplot
	gwenview healthcare.png

vi:
	vi Makefile gnuplot.gp countries-universal-free-healthcare.csv
