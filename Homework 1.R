# Problem 1
# a)
plot(c(0:100)[21:71], dbinom(0:100, size = 100, prob = 1/6)[21:71], pch = 20,
     xlab = "Successes", ylab = "Probability")

# b)
  # Fair coins
E1 <- pbinom(40, 100, 1/2) 
E2 <- 1 - pbinom(71, 100, 1/2)

  # Biased coins
E1 <- pbinom(40, 100, 2/3) 
E2 <- 1 - pbinom(71, 100, 2/3)


# c)
dbinom(40, 100, 1/2)
dbinom(40, 100, 2/3)

dbinom(70, 100, 1/2)
dbinom(70, 100, 1/2)

  # it can be seen that it is more likely for the coin that landed 40 heads 
  # to be the fair coin as the value for dbinom is greater. Consequently 
  # the coin that lands 70 heads should be the biased coin with P(Heads) = 2/3

# d)
# i)
sum(dbinom(seq(from = 0,to = 10, by = 2), 10, 1/2))
# ii)
sum(dbinom(seq(from = 0,to = 10, by = 2), 10, 2/3))



# Problem 2
# a)
a <- c(1:6)
b <- c(10^a[])
c <- c((1 - 1/b[])^b[])

# b) Yes, it is 1/e 

# c)
 # P({"Rolls a 6"}) = 1/6 -> P({"No 6"}) = 1-1/6
 # P({"Ace of spades}) = 1/52 -> P({"Not Ace of spades"}) = 1-1/52
 # Assuming independence P({"No 6"}) and P({"Not Ace of spades"}) = (1-1/6)(1-1/52)
 # = 85/104 
 # Now observe, we have 255/312 = 1 - 57/312
 # Repeating this 312 times gives (1 - 57/312)^312 which is similar to the form 
 # seen in part b) so our answer is 4.6x10^-28 or roughly exp(-57)

# d) 
# i) (255/312)^1560, roughly 2x10^-137 
# ii) distributed with an exponential distribution 
r <- rbinom(20, 1560, 1/6*1/52)
plot(c(1:20), r, pch = 20,
     xlab = "Number of eggs", ylab = "Probability", main = "Realisations")




