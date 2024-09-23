install.packages("Tmisc")
library("Tmisc")
data(quartet)
View(quartet)

library("dplyr")

quartet %>% group_by(set) %>% summarize(mean(x), sd(x), mean(y), sd(y), cor(x, y))

install.packages("ggplot2")
library(ggplot2)

ggplot(mtcars, aes(cyl, mpg)) + geom_point()

ggplot(quartet, aes(x, y)) + geom_point() + geom_smooth(method = lm, se = FALSE) + facet_wrap(-set )

install.packages('datasauRus')

library('datasauRus')

ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3)

install.packages("SimDesign")
library("SimDesign")

actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predic_temp <- c(70, 71, 73, 74, 69, 74)
bias(actual_temp, predic_temp)