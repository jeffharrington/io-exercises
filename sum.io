#
# Simple algorithm to sum elements in a 1D or 2D array/list
#
List sum := method(
  this ::= call target
  sum := 0
  for(i, 1, this size,
    for(j, 1, this at(i-1) size,
      sum = sum + this at(i-1) at(j-1)
    )
  )
  sum
)

twodim ::= list(list(0, 1), list(1, 2), list(2, 3), list(3, 4), list(2, 2, 5))
twodim sum println