#A
my $fichier;
my $ligne;
my @par;
my $sorti;

#B
my @dCtt = (0,0,0,0);

#C
open ($ficher, "<","nomFichier_valide") or die ("problemme dans l'ouverture du fichier ' nomFichier_valide '");
open ($sorti, ">","nomFichier_dep") or die ("problemme dans la creation du fichier nomFichier_dep");

#D
while (<$ficher>){
	#D1	
	$ligne = $_;
	@par = split(/\t/, $ligne);
	
	#D2				
			if (@par[3] =~ /(American Decorative Arts)/i) {
				@dCtt[0]++;
			}
			elsif (@par[3] =~  /(Drawings and Prints)/i) {
			@dCtt[1]++;
			}
			
			elsif (@par[3] =~  /(Medieval Art)/i) {
			@dCtt[2]++;
			}
		
			elsif (@par[3] =~ /(Egyptian Art)/i) {
			@dCtt[3]++;
			}
			else{
			@dCtt[4]++;
			}
			
			
			

}

#E
print $sorti "American-Decorative-Arts\t@dCtt[0]\n" ;
print $sorti "Drawings-and-Prints\t@dCtt[1]\n" ;
print $sorti "Medieval-Art\t@dCtt[2]\n" ;
print $sorti "Egyptian-Art\t@dCtt[3]\n" ;
print $sorti "Autres\t@dCtt[4]\n" ;

#F
close ($fichier);
close ($sorti);