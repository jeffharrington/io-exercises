Builder := Object clone

Builder forward := method(
  "starting forward" println
  indent ::= 0
  indent asString println
  writeln("<", call message name, ">")
  indent = indent + 2
  for(i, 1, indent, write(" "))
  call message arguments foreach(arg,
    content := self doMessage(arg)
    if(content type == "Sequence",
      writeln(content)
      for(i, 1, indent, write(" "))
    )
  )
  writeln("</", call message name, ">")
  indent = indent - 2
  for(i, 1, indent, write(" "))
)

Builder ul(
          li("Io"),
          li("Lua"),
          li("JavaScript")
        )