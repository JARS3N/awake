timer <- function(x,rng=.4){
  mins <- 60*x
  start <- Sys.time()
  end <- start+ mins
  warning(paste0("start: ",
               as.character(start),
               " , ",
               "end: ",
               as.character(end)
               ),immediate. = T)
  while(Sys.time() < end){
    awake::toggle()
    wait_s <- abs(rnorm(1,mins,(rng*mins)))
    Sys.sleep(wait_s)
  }
  warning("timed out")
}
