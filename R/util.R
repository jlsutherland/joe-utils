capture_out <- function(fname, chunkfun) {
  zz <- file(fname, open = "wt")
  sink(zz)
  chunkfun()
  sink()
  close(zz)
}

mcolc <- function(s){
  sprintf("\\multicolumn{1}{c}{%s}", s)
}

tabnote <- function(s) {
  sprintf("\\footnotesize \\emph{Note:} %s", s)
}

stargazer_custom <- function(...) {
  stargazer(
    ...,     
    style="all2", 
    header=F, 
    df = F,
    # notes.align = "p{\dimexpr\textwidth-2\tabcolsep\relax}", # full page width max
    notes.append = F, 
    notes.label = "", 
    align = T, 
    dep.var.labels.include = FALSE, 
    omit.stat = c("rsq","ser")
  )
}

rcomma<-function(x) as.integer(gsub(",", "", x))

