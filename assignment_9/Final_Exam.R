####################################
# Final Exam
# Robyn Schulte
###################################

################
# Set working directory
################
wd_path <- "C:/Users/robyn/OneDrive/Documents/QMB6358/My assignments2/QMB6358_Solutions/assignment_09"
setwd(wd_path)


################
# Question 1
################

################
# Read in airplanes data set
################
airplane_sales <- read.csv(file = 'airplane_sales.csv')

################
# Print out a summary of the data
################
summary1 <- summary(airplane_sales)
airplane_sales_summary <- print(summary1)

################
# Estimate a regression model to predict price as a function of age
################
airplane_lm_model <- lm(data = airplane_sales, 
                        formula = (price) ~ age)

airplane_regression <- summary(airplane_lm_model)


###############
# Question 2
##############

##############
#  Read in data set
##############
airplane_specs <- read.csv(file = 'airplane_specs.csv')

#############
# Merge the data sets
#############
airplane_sales_specs <- merge(airplane_sales, airplane_specs, all = TRUE)
airplane_sales_specs_df <- write.csv(airplane_sales_specs, file = 'airplane_sales_specs.csv', row.names = FALSE)

############
# Print out summary
############
summary2 <- summary(airplane_sales_specs)
airplane_sales_specs_summary <- print(summary2)

#############
# Estimate a regression model
#############
airplane_sales_specs_lm_model <- lm(data = airplane_sales_specs, 
                        formula = (price) ~ age + pass + wtop + fixgear + tdrag)

airplane_sales_specs_lmmodel_regression <- summary(airplane_sales_specs_lm_model)

#############
# Question 3
#############

#############
# Read in data set
#############
airplane_perf <- read.csv(file = 'airplane_perf.csv')

############
# Merge the data sets
############
airplane_full <- merge(airplane_sales_specs, airplane_perf, all = TRUE)
airplane_full_df <- write.csv(airplane_full, file = 'airplane_full.csv', row.names = FALSE)

############
# Print out summary
############
summary3 <- summary(airplane_full)
airplane_full_summary <- print(summary3)

###########
# Estimate a regression model
###########
airplane_full_lm_model <- lm(data = airplane_full, 
                                    formula = (price) ~ age + pass + wtop + fixgear + tdrag + horse + fuel + ceiling + cruise)

airplane_full_lmmodel_regression <- summary(airplane_full_lm_model)

############
# Question 4
############

#############
# Create new variables using the logarithmic function
############

log_price <- log(airplane_full$price)
log_age <- log(airplane_full$age)
log_horse <- (airplane_full$horse)
log_fuel <- (airplane_full$fuel)
log_ceiling <- (airplane_full$ceiling)
log_cruise <- (airplane_full$cruise)

log_df <- data.frame(log_price, log_age, log_horse, log_fuel, log_ceiling, log_cruise)

############
# Summary of the new variables
############

summary(log_df)

#############
# Estimate a regression model
#############
log_df_lm_model <- lm(data = log_df, 
                             formula = (log_price) ~ log_age + airplane_full$pass + airplane_full$wtop + airplane_full$fixgear + airplane_full$tdrag + log_horse + log_fuel + log_ceiling + log_cruise)

log_df_lmmodel_regression <- summary(log_df_lm_model)

###############
# Question 5
###############

###############
# Calculate the sum of squared residuals
###############

y <- airplane_full[, 'price']
x <- airplane_full[, 'age']


ssr <- function(beta, y, x) {
  
  beta_0 <- beta[1]
  beta_1 <- beta[2]
  
  
  ssr <- sum((y - beta_0 - beta_1*x)^2)
  
  return(ssr)
}

########################
# Test the function
########################

beta_test_ssr <- c(coef(airplane_full)['(Intercept)'],
                   coef(airplane_full)['price'])
sqrt(ssr(beta_test_ssr, y, x)/8)

#################
# Compare
#################
sum(airplane_full$residuals^2)



###################
# Verify the accuracy
##################
beta_hat_opt <- optim(par = c(0, 0), fn = ssr, y = y, x = x)


# Extract the parameter estimates.
beta_hat_opt <- beta_hat_opt$par

# Compare with the output above.
print(beta_hat_opt)

