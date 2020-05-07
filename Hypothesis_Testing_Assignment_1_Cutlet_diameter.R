#------------------Hypothesis Testing-------------------------------
# A F&B manager wants to determine whether there is any significant difference 
#in the diameter of the cutlet between two units. A randomly selected sample
#of cutlets was collected from both units and measured? Analyze the data and 
#draw inferences at 5% significance level. Please state the assumptions and tests 
#that you carried out to check validity of the assumptions.

# Business Problem is any significant difference in the diameter of the cutlet?
#here y is continious x is discrete


cutlets <- read.csv(file.choose())
View(cutlets)

attach(cutlets)

#Shapiro test for normality
shapiro.test(Unit.A)
#p-value= 0.32 > 0.05 so p high null fly

shapiro.test(Unit.B)
#p-value = 0.5225 > 0.05  so p high null fly
# It follows normal distribution
#both cases are normal


#-------------------------Variance test---------------------------------------
var.test(Unit.A,Unit.B)
#p-value = 0.3136 > 0.05  so p high null fly

#--------------------2 sample T Test ----------------------------------------
t.test(Unit.A,Unit.B,alternative = "two.sided",conf.level = 0.95,correct = TRUE)
#p-value = 0.4723 > 0.05 so p high null fly
# alternative = "two.sided" means we are checking for equal and unequal
# means
# null Hypothesis -> Equal means
# Alternate Hypothesis -> Unequal Hypothesis
# p-value = 0.4723 > 0.05 accept Null Hypothesis 
# equal means 
#There is no significant differnce in the diameter of cutlet between two units.


