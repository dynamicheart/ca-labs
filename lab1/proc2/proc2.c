int main()
{
  int A[4097][8];
  register int count = 0;
  register int i =0;
  register int j =0;
  for (i = 0; i < 8; ++i)
  {
    for (j = 1; j < 4097; ++j)
      A[j][i] = count++;
  }
  return 0;
}

