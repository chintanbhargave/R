
count <- 0

for(i in rnorm(100))
{
  if(i > -1 & i < 1)
  {
    count <- count + 1
  }
}

count