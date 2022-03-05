library(glmnet)
library(survival)
data("CoxExample")

x = CoxExample$x
y = CoxExample$y

fit = glmnet(x, y, family = "cox") 
# by default, alpha = 1 (elastic net mixing parameter, alpha = 1 means lasso penalty, if alpha = 0, then ridge)
# nlambda is 100 
# lambda.min.ratio: ifelse(nobs < nvars, 0.01, 1e-04)
# lambda.max: data-driven entry value (the smallest value for which all coefficients are zero)

plot(fit)

coef(fit, s = 0.05) 
# s = lambda value 

set.seed(1)

cvfit = cv.glmnet(x, y, family = "cox", type.measure = "C")
# nfolds = 10, by default 
# type.measure = "mse" (gaussian), "deviance" (logistic and poisson), "partial likelihood" (cox)... 

plot(cvfit)

cvfit$lambda.min
cvfit$lambda.1se

surv_y = Surv(time = y[,1], event = y[,2])
surv_fit = survfit(fit, s = 0.05, x = x, y = surv_y)
# y should be Surv object 

plot(surv_fit)

surv_fit_ex = survfit(fit, s = 0.05, x = x, y = surv_y, newx = x[1:3,])

plot(surv_fit_ex)






