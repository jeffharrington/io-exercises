Matrix := list()

Matrix dim := method(
  numLists := doMessage(call message argAt(0));
  length   := doMessage(call message argAt(1));
  this     := call target
  for(i, 1, numLists,
    this append(list())
    for(j, 1, length, this at(i-1) append(nil))
  )
)

Matrix set := method(
  x   := call evalArgAt(0)
  y   := call evalArgAt(1)
  val := call evalArgAt(2)
  self at(x) atPut(y, val)
)

Matrix get := method(
  x := call evalArgAt(0)
  y := call evalArgAt(1)
  self at(x) at(y)
)

Matrix toFile := method(
  filename := call evalArgAt(0)
  file     := File with(filename)
  file remove
  file openForAppending
  file write(self size asString, "\n")
  for(i, 1, self size,
    file write(self at(i-1) size asString, "\n")
    for(j, 1, self at(i-1) size,
      file write(self at(i-1) at(j-1) asString, "\n")
    )
  )
  file close
)

Matrix fromFile := method(
  filename := call evalArgAt(0)
  file     := File with(filename)
  file openForReading
  numLists := file readLine asNumber
  for(i, 1, numLists,
    self append(list())
    length := file readLine asNumber
    for(j, 1, length,
      val := file readLine asString
      self at(i-1) append(val)
    )
  )
)

# Create matrix
matrix := Matrix clone

# Initialize a matrix of 2 x 4
matrix dim(2, 4)

# Set some values
matrix set(0, 0, "a")
matrix set(0, 1, "b")
matrix set(1, 3, "L")

# Write matrix to file
matrix toFile("matrix.txt")

# Create new matrix from file
newMatrix := Matrix clone
newMatrix fromFile("matrix.txt")

newMatrix println

