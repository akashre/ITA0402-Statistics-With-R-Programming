fibonacci <- function(n) {
  if (n == 1) {
    return(0)
  } else if (n == 2) {
    return(c(0, 1))
  } else {
    fib_sequence <- numeric(n)
    fib_sequence[1] <- 0
    fib_sequence[2] <- 1
    for (i in 3:n) {
      fib_sequence[i] <- fib_sequence[i - 1] + fib_sequence[i - 2]
    }
    return(fib_sequence)
  }
}
n <- 10
fibonacci_numbers <- fibonacci(n)
cat("First 10 Fibonacci numbers:", fibonacci_numbers, "\n")
