
library(xlsx)
library(ggplot2)
library(plotly) 
#Make plots of this with error bars
#add ggplots of the data so far
A = seq(1,124)
plot1 <- ggplot(Possession, aes(Start,TOP)) + geom_point()
ggplotly(plot1)

UVA_Oct14 <- read.xlsx("UVA_Oct14.xlsx",1,header=TRUE)

#Time in mm.ss
EndHalf1 = 42.3
StartHalf2 = 43.08

#Time in mm.ss
Goal1_Syr = 49.52
Goal2_UVA = 73.18
Goal3_UVA = 79.58

firstHalf <- subset(UVA_Oct14, Start < EndHalf1)
secondHalf <- subset(UVA_Oct14, Start > StartHalf2)

#Tied at 0
Draw0 = subset(UVA_Oct14, Start< Goal1_Syr)
mean(Draw0$TOP)
#OOP draw 0
Draw0_1 = subset(UVA_Oct14, OOPS< Goal1_Syr)
sum(Draw0_1$OOPT)/60
Goal1_Syr -1 -sum(Draw0_1$OOPT)/60
sum(Draw0$TOP)/60
10.9967/25.5867
#43% possession tied at 0 which is the same as average for the game 

#Length of Possession when losing
Losing = subset(UVA_Oct14, Start > Goal1_Syr & Start < Goal2_UVA)
mean(Losing$TOP)
#OOP losing
Losing_1 = subset(UVA_Oct14, OOPS > Goal1_Syr & OOPS < Goal2_UVA)
sum(Losing_1$OOPT)/60
Goal2_UVA -Goal1_Syr -sum(Losing_1$OOPT)/60
sum(Losing$TOP)/60
3.53/8.31
#Time of possession was 42.5% when losing by 1 goal


#Tied at 1
Draw1 = subset(UVA_Oct14, Start > Goal2_UVA & Start < Goal3_UVA)
mean(Draw1$TOP)
#OOP tied 1
Draw1_1 = subset(UVA_Oct14, OOPS > Goal2_UVA & OOPS < Goal3_UVA)
sum(Draw1_1$OOPT)/60
Goal3_UVA -Goal2_UVA -sum(Draw1_1$OOPT)/60
sum(Draw1$TOP)/60
1.416/3.433
#41.2% possession when tied at 1

#Winning by 1
Winning1 = subset(UVA_Oct14, Start > Goal3_UVA)
mean(Winning1$TOP)
#OOP winning
Winning1_1 = subset(UVA_Oct14, OOPS > Goal3_UVA)
sum(Draw1_1$OOPT)/60
92.28 -Goal3_UVA -sum(Winning1_1$OOPT)/60
sum(Winning1$TOP)/60
1.65/7.73
#TOP for winning by 1 was 21%

#Average Time of Possession was the longest when the teams were tied.
#     




sum(UVA_Oct14$OOPT)/60

mean(UVA_Oct14$OOPT)

Possession = UVA_Oct14[,1:3]
Possession = Possession[1:124,]

sum(Possession$TOP)/60
mean(Possession$TOP)

28/60
#time in mm.ss
start = 1.00
end = 92.28

#time in mm.decimal
length = 91.47

#length of match minus time out of play
91.47 - 51.1 


#sum of possession for uva divided by time in play
#to get percentage of possession for uva
#possible error if time when neither team has possession
17.57/40.37

