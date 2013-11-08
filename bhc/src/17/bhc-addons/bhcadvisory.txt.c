/*
  C/C++ sprintf buffer overflow vulnerability / POC
  PRIVATE! PRIVATE! PRIVATE! DO NOT TRADE!

  author: bhcrew.org
  Date: 2004.01.30
  Product: all C/C++ compilers, msvc, bcc, lcc, gcc, etc.

  1. Basic info.

  C/C++ compiler is a widely-used tool to translate source code into
  executable files.

  2. Bug Description.

  All C/C++ compilers contain run-time libraries with sprintf function,
  which is vulnerable to buffer overflow attack (probably remote).

  3. Solution.

  Visit http://bhcrew.org for more details.
*/

#include <stdio.h>
#include <stdlib.h>

void sploet()
{
  fprintf(stderr, "zero-day exploit by bhcrew.org\n");
  exit(0);
}

void main() /* osnova v skobkah */
{
  char url[20];

  sprintf(url, "http://bhcrew.org/__%c%c%c%c%c%c%c%c",
    (int)&sploet, (int)&sploet>>8, (int)&sploet>>16, (int)&sploet>>24,
    (int)&sploet, (int)&sploet>>8, (int)&sploet>>16, (int)&sploet>>24 );
}
