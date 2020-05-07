#TeleCall uses 4 centers around the globe to process customer order forms.
#They audit a certain %  of the customer order forms.
#Any error in order form renders it defective and has to be reworked before processing. 
#The manager wants to check whether the defective %  varies by centre. 
#Please analyze the data at 5% significance level and help the manager draw appropriate inferences

#Business problem is to check whether the defective %  varies by centre.
cof <-read.csv(file.choose()) # customer_order
View(cof)  
attach(cof)
table(Country,Defective)
chisq.test(table(Country,Defective))

#p-value = 0.2771 > 0.05 accept null hypothesis
# all countries are eual praportions





