#
# Implement a fluent syntax for building XML in Io (including indentation)
#
# Demonstrates overriding forward method
#
XmlBuilder := Object clone do (
  init := method(
    indentLevel ::= 0
    indentWidth ::= 2
  )

  forward := method(
    printElement(call message name)
    increaseIndent
    call message arguments foreach(arg,
      content := self doMessage(arg)
      if(content type == "Sequence",
        printContent(content)
      )
    )
    decreaseIndent
    printElementEnd(call message name)
  )

  printElement := method(
    printIndent
    writeln("<", call evalArgAt(0), ">")
  )

  printElementEnd := method(
    printIndent
    writeln("</", call evalArgAt(0), ">")
  )

  printContent := method(
    printIndent
    writeln(call evalArgAt(0))
  )

  printIndent := method(
    for(i, 1, indentLevel, write(" "))
  )

  increaseIndent := method(
    indentLevel = indentLevel + indentWidth
  )

  decreaseIndent := method(
    indentLevel = indentLevel - indentWidth
  )
)

builder := XmlBuilder clone

builder ul(
          li("Io"),
          li("Lua"),
          li("JavaScript")
        )