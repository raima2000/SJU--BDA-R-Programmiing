                     # STEM LEAF PLOTS
# The stem n leaf plot is another popular plot identifying normality in the 
# continous var ,similar to histogram

attach(mtcars)
stem(wt)


                # NORMALITY
# 2 methods to determine normality of the data
# Graphical approach



               # Test for Normality
# H0 : Data follows a normal dist
# H1: Data doesnt follow a normal dist
# Performs Shapiro Wilk Test for normality


attach(CO2)
shapiro.test(uptake)
