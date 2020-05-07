#Fantaloons Sales managers commented that % of males versus females walking in to the
#store differ based on day of the week. Analyze the data and determine whether there is 
#evidence at 5 % significance level to support this hypothesis.

#Business problem is analyze the data and determine whether there is evidence or not
#trying to find out if proportions of male and female walking in to the store is same or not

fantaloons <- read.csv(choose.files())
View(fantaloons)

attach(fantaloons)
table(Gender)
table(Week)

table1 <- table(Week,Gender)
table1
?prop.test

prop.test(x=c(113,167),n=c(400,400),conf.level = 0.95,correct = FALSE,alternative = "two.sided")
#two. sided -> means checking for equal proportions of male and female 
#p-value = 2.016e-13 < 0.05 accept alternate hypothesis i.e. Unequal proportions 

prop.test(x=c(113,167),n=c(400,400),conf.level = 0.95,correct = FALSE,alternative = "greater")
#p-value = 1 > 0.05 # Accept NULL Hypothesis
#praportion of male > praportion of female

#here Accept null hypothesis so  praportion of male > praportion of female
#proportions of male and female walking in to the store is not same


