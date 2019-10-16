#!/opt/local/bin/perl
use strict;
use warnings;

opendir(DIR, ".");
my @files = grep(/\.dat$/,readdir(DIR));
closedir(DIR);

my $file = ();
foreach $file (@files) {
#commands need to be modified for paths to java, in, out, SPID files
	my $cmd = "/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Commands/java -Xmx1024m -Xms512m -jar PGDSpider2-cli.jar -inputfile $file -inputformat FSTAT -outputfile $file.str -outputformat STRUCTURE -SPID fstat2str.spid";
	system($cmd);
	}
print "done\n";
