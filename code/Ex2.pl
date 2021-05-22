#A
my $fichier;
my $ligne;
my @par;
my $sorti;

#B
my $sd;

#C
open ($ficher, "<","nomFichier_valide") or die ("problemme dans l'ouverture du fichier ' nomFichier_valide '");
open ($sorti, ">","nomFichier_sans_dim") or die ("problemme dans la creation du fichier nomFichier_sans_dim");

#D
while (<$ficher>){
	#D1
	$ligne = $_;
	@par = split(/\t/, $ligne);
	
	#D2
		if( @par[9] !~ /[0-9]+/){
		print $sorti $ligne;
		$sd++;
		}
		
}

#D3
print "Sans Dimention = $sd\n" ;

#D4
close ($fichier);
close ($sorti);

