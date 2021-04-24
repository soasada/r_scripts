if ("tidyverse" %in% rownames(installed.packages()) == FALSE) {
  print("tidyverse is not installed, installing...")
  install.packages("tidyverse")
}

library(tidyverse)

data_proto <- read.csv("./data/promedio_PEG20.csv", dec = ",")

ggplot(data_proto, aes(x = DNA, y = proto, label = proto, fill = horas)) + 
  geom_bar(stat="identity", position = position_dodge(width = 10)) + 
  labs(x = "Concentración ADN (ug)", y = "% Protoplastos transfectados", fill = "Visualización\npost-transfección",  title = "Variable concentración de ADN", subtitle = "PEG 40%") +
  geom_text(vjust = 1.6, position = position_dodge(width = 10)) +
  geom_errorbar(aes(ymin=len-sd, ymax=len+sd), width=.2, position=position_dodge(.9)) +
  theme_bw() +
  scale_x_continuous(breaks = c(10, 20, 30))
