################################################################################
#                                                                              #
#                      KEEP IT PRIVATE OR DIE BITCH !!!                        #
#                                                                              #
#                              Special for                                     #
#                            _______  _______                                  #
#                            \  __ //\\  ___/                                  #
#                            / /_// \ \\ \                                     #
#    Â ÌÅÑÒÅ ÌÛ ÑÈËÀ !      / __ //\/  \\ \__    ÂÑÒÓÏÀÉÒÅ È ÊÎÌÏÅËÈÐÓÉÒÅ !    #
#                          / /_/ \\  /\ \\___>                                 #
#                         /____  / \ \ \/ b u g g e r s                        #
#                        </    \/   \ \  h u k k e r s                         #
#                                    \/ c r e w                                #
#                              e - z i n e                                     #
#                                                                              #
#        Greetz to: Solar Designer, Phrack Stuff, LSD-PL, Feodor, etc          #
#                                                                              #
################################################################################

#!/usr/bin/perl

use IO::Socket;

 # this 32 bytes sh31c0d3 ripped from very private sploet!!!

 my $sh31c0d3 = "\x42\x75\x67\x67\x65\x72\x73\x20\x68\x75".
                "\x6B\x6B\x65\x72\x73\x20\x63\x72\x65\x77".
                "\x20\x70\x77\x6E\x20\x6A\x30\x30\x21\x21\x0d\x0a";

 print "----------------------------------------\n";
 print "-1Day Exploet for making big money! \$\$\$ \nSpecial for BHC e-zine!!!\nKeep It Private Odept!\n\n";
 print "----------------------------------------\n";
 if (@ARGV<4)
 {
  print "Usage: perl $0 <bank_host> <bank_port> <your_account> <how_many_money>\n";
  exit();
 }
 $host   = $ARGV[0];
 $port   = $ARGV[1];
 $id     = $ARGV[2];
 $money  = $ARGV[3];
 $sock = IO::Socket::INET->new( Proto => "tcp", PeerAddr => "$host", PeerPort => "$port") || die "[-] ConnectError!\n";
 print "[+] Connect Ok!\n";
 print "[+] Send 3vi1 C0des!\n";
 print $sock "GET / HTTP/1.0\n";
 print $sock "Host: ".$host."\n";
 while ($ans = <$sock>)
       {
         print "\x2E";
       }
 print "\x0d\x0a";
 print "[+] Mak3 m0n3y!\n";

 #this is private hekkers codes!
 $evil = "\x70\x72\x69\x6E\x74\x20\x27".$sh31c0d3."\x27\x3B";
 eval($evil);
 close($sock);
 print "[+] Y0u have \$$money now on y0ur '$id' acc0unt!!!\n";
 
 #EOF
