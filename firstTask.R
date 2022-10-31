fix_number_with_space <- function(col)
{
  if (length(grep('[a-z]', col, ignore.case = T)) == 0)
    col <- as.double(gsub(" ", "", col))
  
  return(col)
}


