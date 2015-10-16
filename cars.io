Vehicle := Object clone
Vehicle description := "Something that takes you places"
Vehicle description println

Car := Vehicle clone
Car description := "Something that takes you places fast"
Car description println

Car maxMPH := method("140mph")

ferrari := Car clone
ferrari type println
ferrari maxMPH println

unless := method(
  (call sender doMessage(call message argAt(0)))
  ifFalse(call sender doMessage(call message argAt(1)))
  ifTrue( call sender doMessage(call message argAt(2)))
)