# 1b
u <- 0.2
sigma <- 0.25
s <- 50
price <- c(s)
t <- 1:52
err <- rnorm(length(t))

for (i in c(2:52)){
  
  s <- s*(1+u/length(t)+sigma*sqrt(1/length(t))*err[i-1])
  price[i] <- s
}

plot(t, price, type = "l")