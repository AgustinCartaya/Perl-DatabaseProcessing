#A
reset
set title "Graphique Histogram ".nf
set grid

#B
set yrange[0:]
set style data histogram
set style histogram cluster gap 1
set style fill solid
set boxwidth 1

#C
set xtics format ""
set xtics rotate by 60 right

#D
set term png
set output nf.'.png'

#E
plot nf using 2:xtic(1)
