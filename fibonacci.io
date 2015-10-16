Object fib := method(
  # Get first argument
  max := doMessage(call message argAt(0));

  # Fibonacci vars
  first  := 1
  second := 1
  next   := 0

  # Fibonacci loop
  for(i, 1, max,
    first println
    next   = first + second
    first  = second
    second = next
  )
)

fib(10)