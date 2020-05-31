
N <- 10000  #input
count <- 0

for(i in rnorm(N))
{
  if(i > -1 & i < 1)
  {
    count <- count + 1
  }
}

count / N  #compare with 0.682 or 68.2%