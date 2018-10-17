reset
#set term x11 background rgb "white" size 900,650
set term x11 background rgb "white" size 5000,450
set term png background rgb "white" size 1000,450
set term png background rgb "white" size 5000,450
set output "healthcare.png"
set title ""
set label 1 "Country Healthcare System Status (from Wikipedia https://en.wikipedia.org/wiki/List\\_of\\_countries\\_with\\_universal\\_health\\_care)" at graph 0,1.2 left
set boxwidth 0.5
set style fill solid 1.0 border -1
set style data boxes
set ylabel "No / Yes" offset .9,-1
set y2label "No / Yes" offset -.5,-1
set yrange [0:1.7]
set key autotitle columnhead left
set xtics rotate by -60
unset ytics 
set format y ""
set tmargin 2
#set lmargin 10
set size ratio -2
#plot 'countries-universal-free-healthcare.csv' \
#        using 2:xticlabel(1):($2*0+.25), \
#     '' using 3:xticlabel(1) with boxes
plot 'countries-universal-free-healthcare.csv' \
        using 2:xticlabel(1), \
     '' using 3:xticlabel(1)
pause mouse
