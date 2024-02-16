# Exercise 1
x <-c(-1,2,3,0,2,-1,1,1,4)
x[4]
x[c(2:5)]
x[1 <= x & x <= 3]
x[x < 1 | x > 3]
x[0] = -7
y <-seq(from = 1/101, to = 100/101, by = 1/101)
z <-c(0:100)
sum(y^2)
sum(c(1,12)^3)-sum(c(9,10)^3)
a <-c(1:5)
b <-c(0,6,0,4,6)
a>3
a>=3
a>b
max(a,b)
pmax(a,b)
sum(a[a>b])
exp((log(2, base = exp(1)))^2)
c(1,1,1,1,1,1) + c(2,3)
c(1,1,1,1,1) + c(2,3)

# Exercise 2
sum(dbinom(25:100, 100, 1/6)) # using dbinom
1 - pbinom(24, 100, 1/6) # using pbinom

# Exercise 3
rbinom(10, 1, 0.6)
plot(c(1:100), sapply(1:100,function(x) sum(rbinom(10, 1, 0.6))) , pch=20)
