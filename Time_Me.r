Time_me <- function(x) {
  Start_Time_1 <- Sys.time()
  cacheSolve(x)
  Stop_Time_1 <- Sys.time()
  
  Start_Time_2 <- Sys.time()
  cacheSolve(x)
  Stop_Time_2 <- Sys.time()

  Time_1 <- Stop_Time_1 - Start_Time_1
  Time_2 <- Stop_Time_2 - Start_Time_2
  Print(Time_1, Time_2)
  }