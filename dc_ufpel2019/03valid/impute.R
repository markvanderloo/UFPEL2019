# Statistical Data Cleaning
# Mark van der Loo and Edwin de Jonge
# UFPEL2019
## Imputation ----

# try the following code
library(simputation)
companies <- read.csv("03valid/errors_located.csv",stringsAsFactors = FALSE)

# for convenience, we take only the financial variables
finvar <- companies[7:14]
head(finvar, 3)

# Let's study the behavior of 'simputation' a bit.

# 1. Impute 'other.rev', using a linear model, with 'turnover' and 'total.rev' 
# as predictors.
imputed <- impute_lm(finvar, other.rev ~ total.rev + turnover)

# Compare 
head(finvar,3)
# with 
head(imputed,3)  
# is other.rev imputed everywhere? Explain what happened

# let's make a plot: imputed data in blue
plot(imputed$turnover, imputed$other.rev, col='blue', pch=16)
# overlay with original data in black so imputed data stands out.
points(finvar$turnover, finvar$other.rev, col='black',pch=16)

# 2. Now use a robust linear model (M-estimator) to impute
#    'staff.costs' with 'staff' as predictor. Use 'impute_rlm'
#    and make the same plot (but for staff and staff costs).
imputed2 <- impute_rlm(finvar, staff.costs ~ staff)
plot(imputed2$staff.costs, imputed$staff, col='blue', pch=16)
# overlay with original data in black so imputed data stands out.
points(finvar$staff.costs, finvar$staff, col='black',pch=16)


# 3. The same imputation, but we now add a random residual.
#    use impute_rlm, and add the option add_residual="normal"
#    plot the results again.
set.seed(2019)
imputed2 <- impute_rlm(finvar, staff.costs ~ staff)
plot(imputed2$staff.costs, imputed$staff, col='blue', pch=16)
# overlay with original data in black so imputed data stands out.
points(finvar$staff.costs, finvar$staff, col='black',pch=16)


## Assignment (on slide) ----






