if ("tidyverse" %in% rownames(installed.packages()) == FALSE) {
  print("tidyverse is not installed, installing...")
  install.packages("tidyverse")
}

library(tidyverse)

cars <- read.csv("./mpg.csv")

ggplot(data = cars) + geom_point(mapping = aes(x = displ, y = hwy))
