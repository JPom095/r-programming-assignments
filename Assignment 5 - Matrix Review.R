#Josiah Pomeroy
#09/27/2026

#Matrices Review

#Create Matrices
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

#Inspect dimensions
dim(A)  #square
dim(B)  #not square

#Fix issues
# For A
invA <- solve(A) #A is singular, no inverse
detA <- det(A)

# For B, use tryCatch to capture errors
invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B),   error = function(e) e)