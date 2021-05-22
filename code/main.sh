#!/bin/bash

if test $# -ne 1
	then echo "il faut indiquer quel mot clé chercher !"
    exit
fi
table=$1

perl Ex1.pl $table
perl Ex2.pl
perl Ex3.pl
gnuplot -e "nf='nomFichier_dep'" g1.gp
perl Ex4.pl
gnuplot -e "nf='nomFichier_class'" g1.gp
perl Ex5.pl
gnuplot -e "nf='nomFichier_drawings'" g2.gp
gnuplot -e "nf='nomFichier_print'" g2.gp