cluster <- read.csv(file.choose())
View(cluster)
summary(cluster)

y1 <- cluster$Unit.A
y2 <- cluster$Unit.B

## normality test ###
# Ho = data is normal 
# H1 = data is not normal

library(BSDA)

shapiro.test(y1) #  p is high (P > alpha ) data is normal
shapiro.test(y2) #  p is high (p > alpha ) data is normal

# variance test #
# Ho = variance is equal
# H1 = variance is not equal
var.test(y1, y2) # p is high (p > alpha ) variances are assumed to be equal

# 2 sample T test ##
# H0 = diameter (Unit A) <= diameter (Unit B ) --> dia(Unit A) - dia(Unit B) <= 0
# Ha = diameter (Unit A) > diameter (Unit B ) -->  dia(Unit A) - dia(Unit B) > 0

t.test(y1, y2, alternative = "two.sided",conf.level = 0.95,correct = TRUE)




