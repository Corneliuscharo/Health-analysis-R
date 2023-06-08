#Import Dataset
sur <- read.csv("C:/Users/User/Downloads/sur.csv")
#Explore dataset
head(sur)
tail(sur)
str(sur)

#Data visualization
# Load required libraries
library(ggplot2)

# Bar plot of Gender
p1<-ggplot(sur, aes(x = Gender)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Gender Distribution", x = "Gender", y = "Count")

# Histogram of Age
p2<-ggplot(sur, aes(x = Age)) +
  geom_histogram(fill = "steelblue", bins = 10) +
  labs(title = "Age Distribution", x = "Age", y = "Count")

# Pie chart of Country
p3<-ggplot(sur, aes(x = "", fill = Country)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Country Distribution", fill = "Country")

# Stacked bar plot of treatment by family history
p4<-ggplot(sur, aes(x = family_history, fill = treatment)) +
  geom_bar(position = "fill") +
  labs(title = "Treatment by Family History", x = "Family History", y = "Proportion", fill = "Treatment")

# Box plot of leave by treatment
p5<-ggplot(sur, aes(x = treatment, y = leave)) +
  geom_boxplot(fill = "steelblue") +
  labs(title = "Leave by Treatment", x = "Treatment", y = "Leave")

# Bar plot of work_interfere
p6<-ggplot(sur, aes(x = work_interfere)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Work Interference", x = "Work Interference", y = "Count")

# Bar plot of tech_company
p7<-ggplot(sur, aes(x = tech_company)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Tech Company Distribution", x = "Tech Company", y = "Count")

# Bar plot of mental_vs_physical
p8<-ggplot(sur, aes(x = mental_vs_physical)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Mental vs Physical Support", x = "Mental vs Physical", y = "Count")

# Scatter plot of Age vs. leave
p9<-ggplot(sur, aes(x = Age, y = leave)) +
  geom_point(color = "steelblue") +
  labs(title = "Age vs. Leave", x = "Age", y = "Leave")


# Bar plot of no_employees
p10<-ggplot(sur, aes(x = no_employees)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Employee Count Distribution", x = "Number of Employees", y = "Count")

# Bar plot of remote_work
p11<-ggplot(sur, aes(x = remote_work)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Remote Work Distribution", x = "Remote Work", y = "Count")

# Bar plot of benefits
p12<-ggplot(sur, aes(x = benefits)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Benefits Distribution", x = "Benefits", y = "Count")

# Bar plot of care_options
p13<-ggplot(sur, aes(x = care_options)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Care Options Distribution", x = "Care Options", y = "Count")

# Bar plot of wellness_program
p14<-ggplot(sur, aes(x = wellness_program)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Wellness Program Distribution", x = "Wellness Program", y = "Count")

# Bar plot of seek_help
p15<-ggplot(sur, aes(x = seek_help)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Seek Help Distribution", x = "Seek Help", y = "Count")

# Bar plot of anonymity
p16<-ggplot(sur, aes(x = anonymity)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Anonymity Distribution", x = "Anonymity", y = "Count")

# Bar plot of mental_health_consequence
p17<-ggplot(sur, aes(x = mental_health_consequence)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Mental Health Consequence", x = "Mental Health Consequence", y = "Count")

# Bar plot of coworkers
p18<-ggplot(sur, aes(x = coworkers)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Coworkers Distribution", x = "Coworkers", y = "Count")

# Bar plot of supervisor
p19<-ggplot(sur, aes(x = supervisor)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Supervisor Distribution", x = "Supervisor", y = "Count")

# Bar plot of obs_consequence
p20<-ggplot(sur, aes(x = obs_consequence)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Observed Consequence Distribution", x = "Observed Consequence", y = "Count")

# Bar plot of phys_health_interview
p21<-ggplot(sur, aes(x = phys_health_interview)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Physical Health Interview Distribution", x = "Physical Health Interview", y = "Count")

# Bar plot of phys_health_consequence
p22<-ggplot(sur, aes(x = phys_health_consequence)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Physical Health Consequence Distribution", x = "Physical Health Consequence", y = "Count")
# Load required libraries
library(gridExtra)
# Arrange the first 2 plot in a grid
grid.arrange(p1, p2, nrow = 1, ncol = 2)
# Arrange from the 3rd plot in a grid
grid.arrange(p3, p4, nrow = 1, ncol = 2)
# Arrange from the 5th plot in a grid
grid.arrange(p5,p6,p7,p8, nrow = 2, ncol = 2)
# Arrange from the 9th plot in a grid
grid.arrange(p9,p10,p11,p12, nrow = 2, ncol = 2)

# Arrange from the 13th plot in a grid
grid.arrange(p13,p14,p15,p16, nrow = 2, ncol = 2)

# Arrange from the 17th plot in a grid
grid.arrange(p17,p18,p19,p20,p21,p22, nrow = 3, ncol = 2)






