#A
my $Nfichier = @ARGV[0];
my $fichier;
my $ligne;
my @par;
my $sorti;

#B
my $valides=0;
my $publics=0;
my $date = 0;
my $p = 0;

#C
open ($ficher, "<",$Nfichier) or die ("problemme dans l'ouverture du fichier ' $Nfichier '");
open ($sorti, ">","nomFichier_valide") or die ("problemme dans la creation du fichier nomFichier_valide");

#D
while (<$ficher>){
	#D1
	$ligne = $_;
	@par = split(/\t/, $ligne);
	
	#D2
	if(@par[2] =~ /^[0-9]+$/)
	{	
		#Ex 1
		$valides++;
		if(@par[1] =~ /true/i){
			$publics ++;		
		}
		
		if( @par[7] =~ /[a-zA-z0-9]+/ && @par[7] !~ /n\.d/i){
		$date++;
		}
		if( @par[4] =~ /^P/){
		$p++;		
		}

		print $sorti $ligne;
	
	}

}

#E
print "lignes valides = $valides\nPubliques = $publics\navec data = $date\nCommencant pour P = $p\n";

#F
close ($fichier);
close ($sorti);

	