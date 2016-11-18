
i <- Sys.getenv("SGE_TASK_ID")

f <- function(x){
  x
}

res <- f(i)
save(res, file=paste0("res", i, ".Rdata"))