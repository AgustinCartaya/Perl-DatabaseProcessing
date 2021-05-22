#A
my $fichier;
my $ligne;
my @par;
my $sorti;

#B
my @mCtt = (0,0,0,0,0,0,0,0);

#C
open ($ficher, "<","nomFichier_valide") or die ("problemme dans l'ouverture du fichier ' nomFichier_valide '");
open ($sorti, ">","nomFichier_class") or die ("problemme a la creation du fichier nomFichier_class");

#D
while (<$ficher>){
#D1	
	$ligne = $_;
	@par = split(/\t/, $ligne);
	
	#D2
				
			if (@par[11] =~ /metal/i) {
			#print " @par[2]\n";
				@mCtt[0]++;
			}
			if (@par[11] =~ /silver/i) {
				@mCtt[1]++;
			}
			if (@par[11] =~ /prints/i) {
				@mCtt[2]++;
			}
			if (@par[11] =~ /drawings/i) {
				@mCtt[3]++;
			}
			if (@par[11] =~ /ceramics/i) {
				@mCtt[4]++;
			}
			if (@par[11] =~ /ephemera/i) {
				@mCtt[5]++;
			}

			if (@par[11] !~ /[a-z0-9]/i) {
				@mCtt[7]++;
			}elsif (@par[11] !~ /(metal|silver|prints|Drawings|ceramics|Ephemera)/i) {
			#print "@par[2]\t@par[11]\n";
				@mCtt[6]++;
			}
	
	
	
}


#E
print $sorti "Metal\t@mCtt[0]\n" ;
print $sorti "Silver\t@mCtt[1]\n" ;
print $sorti "Prints\t@mCtt[2]\n" ;
print $sorti "Drawings\t@mCtt[3]\n" ;
print $sorti "Ceramics\t@mCtt[4]\n" ;
print $sorti "Ephemera\t@mCtt[5]\n" ;
print $sorti "Autre\t@mCtt[6]\n" ;
print $sorti "Vide\t@mCtt[7]\n" ;

#F
close ($fichier);
close ($sorti);
