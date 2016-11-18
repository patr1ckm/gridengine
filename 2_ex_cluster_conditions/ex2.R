
i <- as.numeric(Sys.getenv("SGE_TASK_ID"))
if(is.na(i)) i <- 1

conditions <- expand.grid(x=1:3, y=1:4)
cond <- conditions[i, ]

f <- function(x, y){
  x+y
}

res <- f(x=cond$x, y=cond$y)
save(res, file=paste0("res_", i, ".Rdata"))