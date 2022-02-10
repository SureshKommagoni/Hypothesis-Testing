labTAT <- read.csv(file.choose())
View(labTAT)
summary(labTAT)
Stackdata <- stack(labTAT)
View(Stackdata)
attach(Stackdata)

# Normality test ##
# H0 = Data is normal
# Ha = DAta is not normal 

library(BSDA)
shapiro.test(Stackdata$values)


library(nortest)
ad.test(Stackdata$values)
## Variance test ###

library(car)
?car
leveneTest(Stackdata$values~Stackdata$ind, data = Stackdata)

## One-way ANOVA test ###
# Ho= all the means are equal
# Ha = all the means are not equal
# significance level =0.05
Anova_result <- aov(Stackdata$values ~ Stackdata$ind, data = Stackdata)
summary(Anova_result)





