twodim ::= list(list(0, 1), list(1, 2), list(2, 3), list(3, 4), list(2, 2, 5))

# Method to sum up all numbers in a two-dimensional array
twodim sum := method(
  # Get self
  array ::= call target

  # Initialize sum
  sum := 0

  # Loop through two-dimensional array
  for(i, 1, array size,
    for(j, 1, array at(i-1) size,
      sum = sum + array at(i-1) at(j-1)
    )
  )

  # Return sum
  sum
)

twodim sum println