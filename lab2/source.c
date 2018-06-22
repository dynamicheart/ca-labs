#include<stdio.h>

int main()
{
  register char x = 0, y = 64;
  for (register int i = 0; i < 1000000; ++i)
  {
    if (x != y)
      x = y;
  }
  return 0;
}

