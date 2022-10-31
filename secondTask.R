get_mean_and_count <- function(x){
  x_mean <- mean(x)
  x_count <- length(x)
  return (c(x_mean, x_count))
}

get_mean_temp_table <- function(data) {
  combine_by_arg_table <- do.call(rbind, data)
  modified_table <- aggregate(combine_by_arg_table$temp, by=list(combine_by_arg_table$id), get_mean_and_count)
  modified_table <- modified_table[modified_table$x[,2] == 7,]
  return (data.frame(id = modified_table$Group.1, mean_temp = modified_table$x[,1]))
}