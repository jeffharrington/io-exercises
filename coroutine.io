vizzini := Object clone
vizzini talk := method(
  "This is Vizzini's first message" println
  yield
  "This is Vizzini's second message" println
  yield
)

fezzik := Object clone
fezzik rhyme := method(
  yield
  "This is fezzik's first message" println
  yield
  "This is fezzik's second message" println
)

vizzini @@talk
fezzik @@rhyme

Coroutine currentCoroutine pause