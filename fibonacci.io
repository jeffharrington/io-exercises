#
# Demonstrates a non-recurive fibonacci sequence
#
Object fib := method(
  max := doMessage(call message argAt(0));

  first  := 1
  second := 1
  next   := 0

  for(i, 1, max,
    first println
    next   = first + second
    first  = second
    second = next
  )
)

# Print first 10 numbers in fibonacci sequence
fib(10)