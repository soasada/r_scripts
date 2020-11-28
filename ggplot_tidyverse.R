if ("tidyverse" %in% rownames(installed.packages()) == FALSE) {
  print("tidyverse is not installed, installing...")
  install.packages("tidyverse")
}

library(tidyverse)

data_proto <- read.csv("./data/median_time.csv", dec = ",")

ggplot(data_proto, aes(x = tiempo, y = proto, label = proto, fill = horas)) + 
  geom_bar(stat="identity", position = position_dodge(width = 5)) + 
  labs(x = "Minutos de incubación", y = "% Protoplastos transfectados", fill = "Visualización\npost-transfección",  title = "Variable tiempo de incubación", subtitle = "Promedio") +
  geom_text(vjust = 1.6, position = position_dodge(width = 5)) +
  theme_bw() +
  scale_x_continuous(breaks = c(5, 10, 15, 20, 30))
