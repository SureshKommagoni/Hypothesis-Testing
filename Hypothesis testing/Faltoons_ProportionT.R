Fantaloons <- read.csv(file.choose())
View(Fantaloons)
attach(Fantaloons)
table(Weekdays, Weekend)
# Ho = prop(male) is equal to prop(Female)
# Ha = prop(male) is not equal to prop(Female)
prop.test(x=c(66,47),n=c(233,167),conf.level = 0.95,correct = FALSE,alternative = "two.sided")

# p-value = 0.9681 -> p high -> Ho fly -> accept Ho

