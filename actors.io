slower := Object clone
slower start := method(
  wait(2)
  writeln("slowly")
)

faster := Object clone
faster start := method(
  wait(1)
  writeln("quickly")
)

# Should print "slowly", then "quickly"
slower start
faster start

writeln("")

# Should print "quickly", then "slowly"
slower @@start
faster @@start
wait(3)