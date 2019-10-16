#!/opt/local/bin/perl
use strict;
use warnings;

opendir(DIR, ".");
my @files = grep(/\.dat$/,readdir(DIR));
closedir(DIR);

my $file = ();
foreach $file (@files) {
	my $cmd = "/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Commands/java -Xmx1024m -Xms512m -jar /Users/rhiannonpeery/Documents/sidePieces/K2/PGDSpider_2.1.1.5/PGDSpider2-cli.jar -inputfile $file -inputformat FSTAT -outputfile $file.str -outputformat STRUCTURE -SPID /Users/rhiannonpeery/Documents/sidePieces/K2/PGDSpider_2.1.1.5/fstat2str.spid";
	system($cmd);
	}
print "done\n";