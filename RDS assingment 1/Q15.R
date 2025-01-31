#15. The conversion from a temperature measurement in degrees Fahrenheit F to Celsius C is
#performed using the following equation:
# C = 5/9 (F - 32)

fahrenheit_temps <- c(45, 77, 20, 19, 101, 120, 212)
celsius_temps <- (5 / 9) * (fahrenheit_temps - 32)
celsius_temps