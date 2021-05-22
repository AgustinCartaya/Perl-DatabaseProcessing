#A
reset
set title "Graphique en aires ".nf
set grid

#B
set style data boxplot
set style fill solid 0.5 border -1
set style boxplot outliers pointtype 7
set boxwidth 0.5
set pointsize 0.5
unset key
set border 2

#C
set xtics (nf 1) scale 0.0
set xtics rotate by 60 right

#D
set term png
set output nf.'.png'

#E
plot nf using (10):2
