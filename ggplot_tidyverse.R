if ("tidyverse" %in% rownames(installed.packages()) == FALSE) {
  print("tidyverse is not installed, installing...")
  install.packages("tidyverse")
}
# Here we are using mpg for educational purpose
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))