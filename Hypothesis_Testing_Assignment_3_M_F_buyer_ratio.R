#Sales of products in four different regions is tabulated for males and females. 
#Find if male-female buyer rations are similar across regions.

#Business problem is that Find male-female buyer rations are similar across regions.
#H0: male-female buyer rations are similar across regions
#Ha: male-female buyer rations are different across regions

Buyer_Ratio <- read.csv(choose.files())
View(Buyer_Ratio)

attach(Buyer_Ratio)

c1 <- Buyer_Ratio$East
c2 <- Buyer_Ratio$West
c3 <- Buyer_Ratio$North
c4 <- Buyer_Ratio$South
table <-data.frame(c1,c2,c3,c4)

View(table)
chisq.test(table)

# p-value = 0.6603 > 0.05  Accept null hypothesis
# so male-female buyer rations (Praportions)are similar across regions