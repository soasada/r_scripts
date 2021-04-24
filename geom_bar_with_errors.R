if ("tidyverse" %in% rownames(installed.packages()) == FALSE) {
  print("tidyverse is not installed, installing...")
  install.packages("tidyverse")
}

library(tidyverse)

data_proto <- read.csv("./data/peg40.csv", dec = ",")

#ggplot(data_proto, aes(x = DNA, y = proto, label = proto, fill = horas)) + 
 # geom_bar(stat="identity", position = position_dodge(width = 10)) + 
  #labs(x = "Concentración ADN (ug)", y = "% Protoplastos transfectados", fill = "Visualización\npost-transfección",  title = "Variable concentración de ADN", subtitle = "PEG 40%") +
  #geom_text(vjust = 1.6, hjust = 1.5, position = position_dodge(width = 10)) +
  #geom_errorbar(aes(ymin=proto-DS, ymax=proto+DS), width=1, position=position_dodge(.2)) +
  #theme_bw() +
  #scale_x_continuous(breaks = c(10, 20, 30))

ggplot(data_proto, aes(x = DNA, y = proto, label = proto, fill = horas)) + 
  geom_bar(stat="identity", position = position_dodge(width = 10)) + 
  labs(x = "Concentración ADN (ug)", y = "% Protoplastos transfectados", fill = "Visualización\npost-transfección",  title = "Variable concentración de ADN", subtitle = "PEG 40%") +
  geom_errorbar(aes(ymin=proto-DS, ymax=proto+DS), width=1, position=position_dodge(width = 10)) +
  #geom_text(vjust = 1.6, hjust = 1.5, position = position_dodge(width = 10)) +
  theme_bw() +
  scale_x_continuous(breaks = c(10, 20, 30))

#ggplot(data_proto, aes(x = tiempo, y = proto, label = proto, fill = horas)) + 
  #geom_bar(stat="identity", position = position_dodge(width = 5)) + 
  #labs(x = "Minutos de incubación", y = "% Protoplastos transfectados", fill = "Visualización\npost-transfección",  title = "Variable tiempo de incubación", subtitle = "Promedio") +
  #geom_text(vjust = 1.6, position = position_dodge(width = 5)) +
  #geom_errorbar(aes(ymin=proto-DS, ymax=proto+DS), width=1, position=position_dodge(width = 5)) +
  #theme_bw() +
  #scale_x_continuous(breaks = c(5, 10, 15, 20, 30))