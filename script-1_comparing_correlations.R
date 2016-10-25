library(tidyverse)
bfi <- read_csv("bfi.csv")
library(apaTables)

#Create correlation table 
apa.cor.table(bfi)

#We will compare correlation (between A1 and C1) and correlation (between E1 and O1)
##Are the correlations different? 
library(cocor)

#To compare correlations based on dependent groups when correlations do not overlap 
cocor(~A1+C1|E1+O1, data=as.data.frame(bfi))
#Results
#r.jk (A1, C1) = 0.0276
#(E1, O1) = -0.1002
#Difference: r.jk - r.hm = 0.1278 <- this is comparison 
#Write up: (change in, triangle, delta symbol)r = .13, 95% CI [.08,.18] <- CI from Zou 

#Overlapping correlations - comparing correlations 
##e.g., Does agreeableness correlate more with conscientiousness or does it correlate more with E1?
##e.g., Does C1 predict job performance (A1) better than E1? 
cocor(~C1+A1|E1+A1, data=as.data.frame(bfi))
#write up, (delta)r = -.08, 95% CI [-.13, -.03]