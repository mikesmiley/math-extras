
# #### Useful mathematical functions which should be part of the JavaScript Math object.



#
# Compute conversion from degrees to radians.
#
Math.radians = (degrees) ->
  degrees * Math.PI / 180

#
# Compute conversion from radians to degrees.
#
Math.degrees = (radians) ->
  radians * 180 / Math.PI

#
# Obtain the sign of the given number.
#
Math.sign = (num) ->
  if num
    if num < 0
      return -1
    else
      return 1
  else
    return 0

#
# Compute conversion from degrees to radians.
#
Math.factorial = (x) ->
  if x < 2
    return 1
  else
    return Math.factorial(x-1)*x

#
# Compute the base-10 logarithm of x.
#
Math.log10 = (x) ->
  Math.log(x) / Math.LN10

#
# Compute the error function of x.
# - http://en.wikipedia.org/wiki/Error_function
# - https://github.com/ghewgill/picomath
#
Math.erf = (x) ->
  # Constants
  a1 = 0.254829592
  a2 = -0.284496736
  a3 = 1.421413741
  a4 = -1.453152027
  a5 = 1.061405429
  p = 0.3275911

  # Save the sign of x
  sign = 1
  sign = -1  if x < 0
  x = Math.abs(x)

  # Formula 7.1.26 from:
  # - Abramowitz, M. and Stegun, I. A. (Eds.). "Error Function and Fresnel Integrals." Ch. 7 in Handbook of Mathematical Functions with Formulas, Graphs, and Mathematical Tables, 9th printing. New York: Dover, pp. 297-309, 1972.
  t = 1.0 / (1.0 + p * x)
  y = 1.0 - (((((a5 * t + a4) * t) + a3) * t + a2) * t + a1) * t * Math.exp(-x * x)
  sign * y
