#A hospital wants to determine whether there is any difference in the average Turn 
#Around Time (TAT) of reports of the laboratories on their preferred list. They collected 
#a random sample and recorded TAT for reports of 4 laboratories. TAT is defined as sample
#collected to report dispatch.

#Analyze the data and determine whether there is any difference in average TAT among 
#the different laboratories at 5% significance level.

#Business Problem is whether there is any difference in average TAT among the different laboratories
#here y is continious x is discrete
LabTat <- read.csv(file.choose())
View(LabTat)

attach(LabTat)

shapiro.test(Laboratory.1)
# p-value = 0.5508 > 0.05 so p high null fly

shapiro.test(Laboratory.2)
# p-value = 0.8637 > 0.05 so p high null fly


shapiro.test(Laboratory.3)
# p-value = 0.4205 > 0.05 so p high null fly

shapiro.test(Laboratory.4)
#  p-value = 0.6619 > 0.05 so p high null fly
# It follows normal distribution
#both cases are normal
#H0: It is normally distributed
#Ha: It is not normally distributed

Stacked_Data <- stack(LabTat)
View(Stacked_Data)

attach(Stacked_Data)

#-------------------------Variance test---------------------------------------

leveneTest(values,ind,data=Stacked_Data)
# p-value = 0.05161 > 0.05 so p high null fly. It accepts null hypothesis 
#H0:Variance is equal
# Ha: varianve is not equal

Anova_results <- aov(values~ind,data = Stacked_Data)
summary(Anova_results)

# Here p-value of ANOVA is very less that is 2e-16 < 0.05 then null hypothesis is rejected.

# It accepts alternate hypothesis.
# the conclusion is that the LabTAT varies based on the rejection of null hypothesis.
