#include <bhc_stuff.hpp>

#define NULLDEY NULL
#define EXIT_NULLDEY NULLDEY

int hekker_truth;

/* hekker ottak! ottaaaaaakk!!!! */
void attack(void)
??<
  fprintf(hekker_truth, "vstupayte i kompeliruyte, padli!??/r??/n");
  fprintf(hekker_truth, "sudniy (nullevoy) dey blizok, cuki!??/r??/n");
??>

int main(int argc, char **argv)
??<
  const int port = 0x666;           /* hekker ottack port */
  const char * addr = "127.0.0.1";  /* white house */
  int sock;
  struct sockaddr_in sin;
  sock = socket(AF_INET, SOCK_STREAM, NULLDEY);
  if (sock) ??<
    sin.sin_family = AF_INET;
    sin.sin_port = htons(port); /**/
    sin.sin_addr.s_addr = inet_addr(addr);
    if (!connect(sock, (struct sockaddr *)&sin, sizeof(sin))) ??<
      hekker_truth = sock; /* swap ottack */
      attack();
    ??>
    closesocket(sock);
  ??>
  return EXIT_NULLDEY;
??>
