BuyerRation <- read.csv(file.choose())
View(BuyerRation)
attach(BuyerRation)
table(Observed.Values, East,West)
# chi
chisq.test(table(Observed.Values, East,West))

table(Observed.Values, West)
chisq.test(table(Observed.Values, West))
