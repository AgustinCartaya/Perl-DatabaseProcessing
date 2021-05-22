#A
my $fichier;
my $ligne;
my @par;
my $sortia;
my $sortib;

#B
my $h;
my $w;
my $ar;
#C
open ($ficher, "<","nomFichier_valide") or die ("problemme dans l'ouverture du fichier ' nomFichier_valide '");
open ($sortia, ">","nomFichier_print") or die ("problemme a la creation du fichier nomFichier_print");
open ($sortib, ">","nomFichier_drawings") or die ("problemme a la creation du fichier nomFichier_drawings");


#D
while (<$ficher>){
	#D1
	$ligne = $_;
	@par = split(/\t/, $ligne);

		#D2
			if(@par[4] =~ /Print/ && @par[9] =~ /[0-9]+/){

				if( @par[9] =~ /\(\D*(\d+[.,]?\d*)\D*\).*\(\D*(\d+[.,]?\d*)\D*\)/){
				$w=$1;
				$h = $2;
				}

				elsif( @par[9] =~ /\(\D*(\d+[.,]?\d*)\D*(\d+[.,]?\d*)\D*\)/){
				$w=$1;
				$h = $2;
				}

				$w =~ s/,/./;
				$h =~ s/,/./;
				$ar = $w*$h;
				print $sortia "@par[0]\t$ar\n";

			}
			if(@par[4] =~ /Drawing/ && @par[9] =~ /[0-9]+/){

				if( @par[9] =~ /\(\D*(\d+[.,]?\d*)\D*\).*\(\D*(\d+[.,]?\d*)\D*\)/){

				$w=$1;
				$h = $2;
				}

				elsif( @par[9] =~ /\(\D*(\d+[.,]?\d*)\D*(\d+[.,]?\d*)\D*\)/){
				$w=$1;
				$h = $2;
				}

				$w =~ s/,/./;
				$h =~ s/,/./;
				$ar = $w*$h;
				print $sortib "@par[0]\t$ar\n";
			}


}

#E
#F
close ($fichier);
close ($sortib);
close ($sortia);
