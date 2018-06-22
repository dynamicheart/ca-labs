int main()
{
  int A[4097][8];
  register int count = 0;
  register int i =0;
  register int j =0;
  for (i = 1; i < 4097; ++i)
  {
    for (j = 0; j < 8; ++j)
      A[i][j] = count++;
  }
  return 0;
}

