#Matrix Operations

#Josiah Pomeroy
#10/04/26

#Matrix Creation
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

#Matrix Math Operators
Plus <- A + B
Plus
Minus <- A - B
Minus

#Diagonal Martices
D <- diag(c(4, 1, 2, 3))
D

D2 <- diag(3, 5)
D2[1, 2:5] <- 1
D2[2:5, 1] <- 2
D2

https://josiahpomeroyrprogramming.wordpress.com/
