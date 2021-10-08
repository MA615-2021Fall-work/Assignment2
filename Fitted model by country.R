#I firstly fit the linear regression model between female employment rate and mean years that female study in school from age 15.
#In order to interpret my model better
#Fitted model for Bangladesh
fitmod_Bang <- stan_glm(formula = femaleemploymentrate[1:19] ~ meanyearseducated[1:19], data = finaltable, refresh = 0)
summary(fitmod_Bang)
plot_Bang <- plot(femaleemploymentrate[1:19] ~ meanyearseducated[1:19], data = finaltable)
abline(a = coefficients(fitmod_Bang)[1], b = coefficients(fitmod_Bang)[2])

#Fitted model for Brazil
fitmod_Brazil <- stan_glm(formula = femaleemploymentrate[20:38] ~ meanyearseducated[20:38], data = finaltable, refresh = 0)
summary(fitmod_Brazil)
plot_Brazil <- plot(femaleemploymentrate[20:38] ~ meanyearseducated[20:38], data = finaltable)
abline(a = coefficients(fitmod_Brazil)[1], b = coefficients(fitmod_Brazil)[2])

#Fitted model for China
fitmod_China <- stan_glm(formula = femaleemploymentrate[39:57] ~ meanyearseducated[39:57], data = finaltable, refresh = 0)
summary(fitmod_China)
plot_China <- plot(femaleemploymentrate[39:57] ~ meanyearseducated[39:57], data = finaltable)
abline(a = coefficients(fitmod_China)[1], b = coefficients(fitmod_China)[2])

#Fitted model for UK
fitmod_UK <- stan_glm(formula = femaleemploymentrate[58:76] ~ meanyearseducated[58:76], data = finaltable, refresh = 0)
summary(fitmod_UK)
plot_UK <- plot(femaleemploymentrate[58:76] ~ meanyearseducated[58:76], data = finaltable)
abline(a = coefficients(fitmod_UK)[1], b = coefficients(fitmod_UK)[2])

#Fitted model for Indonesia
fitmod_Indo <- stan_glm(formula = femaleemploymentrate[77:95] ~ meanyearseducated[77:95], data = finaltable, refresh = 0)
summary(fitmod_Indo)
plot_Indo <- plot(femaleemploymentrate[77:95] ~ meanyearseducated[77:95], data = finaltable)
abline(a = coefficients(fitmod_Indo)[1], b = coefficients(fitmod_Indo)[2])

#Fitted model for India
fitmod_India <- stan_glm(formula = femaleemploymentrate[96:114] ~ meanyearseducated[96:114], data = finaltable, refresh = 0)
summary(fitmod_India)
plot_India <- plot(femaleemploymentrate[96:114] ~ meanyearseducated[96:114], data = finaltable)
abline(a = coefficients(fitmod_India)[1], b = coefficients(fitmod_India)[2])

#Fitted model for Japan
fitmod_Japan <- stan_glm(formula = femaleemploymentrate[115:133] ~ meanyearseducated[115:133], data = finaltable, refresh = 0)
summary(fitmod_Japan)
plot_Japan <- plot(femaleemploymentrate[115:133] ~ meanyearseducated[115:133], data = finaltable)
abline(a = coefficients(fitmod_Japan)[1], b = coefficients(fitmod_Japan)[2])

#Fitted model for Mexico
fitmod_Mexico <- stan_glm(formula = femaleemploymentrate[134:152] ~ meanyearseducated[134:152], data = finaltable, refresh = 0)
summary(fitmod_Mexico)
plot_Mexico <- plot(femaleemploymentrate[134:152] ~ meanyearseducated[134:152], data = finaltable)
abline(a = coefficients(fitmod_Mexico)[1], b = coefficients(fitmod_Mexico)[2])
#Fitted model for Nigeria
fitmod_Nigeria <- stan_glm(formula = femaleemploymentrate[153:171] ~ meanyearseducated[153:171], data = finaltable, refresh = 0)
summary(fitmod_Nigeria)
plot_Nigeria <- plot(femaleemploymentrate[153:171] ~ meanyearseducated[153:171], data = finaltable)
abline(a = coefficients(fitmod_Nigeria)[1], b = coefficients(fitmod_Nigeria)[2])

#Fitted model for Pakistan
fitmod_Pakistan <- stan_glm(formula = femaleemploymentrate[172:190] ~ meanyearseducated[172:190], data = finaltable, refresh = 0)
summary(fitmod_Pakistan)
plot_Pakistan <- plot(femaleemploymentrate[172:190] ~ meanyearseducated[172:190], data = finaltable)
abline(a = coefficients(fitmod_Pakistan)[1], b = coefficients(fitmod_Pakistan)[2])

#Fitted model for Russia
fitmod_Russia <- stan_glm(formula = femaleemploymentrate[191:209] ~ meanyearseducated[191:209], data = finaltable, refresh = 0)
summary(fitmod_Russia)
plot_Russia <- plot(femaleemploymentrate[191:209] ~ meanyearseducated[191:209], data = finaltable)
abline(a = coefficients(fitmod_Russia)[1], b = coefficients(fitmod_Russia)[2])

#Fitted model for the US
fitmod_US <- stan_glm(formula = femaleemploymentrate[210:228] ~ meanyearseducated[210:228], data = finaltable, refresh = 0)
summary(fitmod_US)
plot_US <- plot(femaleemploymentrate[210:228] ~ meanyearseducated[210:228], data = finaltable)
abline(a = coefficients(fitmod_US)[1], b = coefficients(fitmod_US)[2])