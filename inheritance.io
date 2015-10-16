#
# Demonstrates inheritance in Io along with proto method
#
Object ancestors := method(
  prototype := self proto
  if(prototype != Object,
    writeln("Slots of ", prototype type, "\n-----------------")
    prototype slotNames foreach(slotName, writeln(slotName))
    writeln
    prototype ancestors
  )
)

Animal := Object clone
Animal speak := method("Ambigous animal noise" println)

Duck := Animal clone
Duck speak := method("Quack" println)
Duck walk := method("Waddle" println)

disco := Duck clone
disco ancestors