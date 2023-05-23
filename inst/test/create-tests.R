ns <- readLines("./NAMESPACE")
tmp <- grep("run", plop, value = TRUE)
res <- strsplit(
  strsplit(tmp, "export\\(")[[1]][2],
  "\\)"
)[[1]][1]
