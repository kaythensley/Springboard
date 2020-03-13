# Exercise 1
summary(states.data)
energyConsump <- lm(energy ~ metro, data = states.data)
summary(energyConsump)
# Multiple R-squared:  0.1154,	Adjusted R-squared:  0.097 
plot(energyConsump)
energyConsump2 <- lm(energy ~ metro + density + pop + waste + toxic + green, data = states.data)
summary(energyConsump2)
# Multiple R-squared:  0.7691,	Adjusted R-squared:  0.7353 

#Exercise 2
energyConsump2 <- lm(energy ~ metro + density + pop + waste + toxic + green, data = states.data)
energyConsump3 <- lm(energy ~ metro*density, data = states.data)
coef(summary(energyConsump3))
#Estimate   Std. Error   t value     Pr(>|t|)
#(Intercept)   514.10424265 72.513405133  7.089782 6.683817e-09
#metro          -1.72111951  1.135554671 -1.515664 1.364465e-01
#density        -1.43817898  0.911292059 -1.578176 1.213782e-01
#metro:density   0.01386147  0.009534258  1.453859 1.527747e-01

energyConsump5 <- lm(energy ~ metro + density + pop + waste + toxic + green +region, data = states.data)
#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept)    1.615e+02  6.627e+01   2.436   0.0196 *  
#  metro          2.852e-01  6.855e-01   0.416   0.6797    
#density       -1.693e-02  6.640e-02  -0.255   0.8001    
#pop            1.133e-06  2.216e-06   0.511   0.6121    
#waste         -1.276e+01  4.998e+01  -0.255   0.7999    
#toxic          2.407e+00  5.337e-01   4.510 6.06e-05 ***
#  green          4.800e+00  6.346e-01   7.563 4.31e-09 ***
#  regionN. East -5.612e+00  3.913e+01  -0.143   0.8867    
#regionSouth    3.065e+01  2.542e+01   1.206   0.2353    
#regionMidwest  5.911e+00  2.645e+01   0.223   0.8244 