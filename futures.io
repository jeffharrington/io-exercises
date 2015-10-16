#
# Demonstrates concurrency via Futures
#
googleFuture := URL with("http://www.google.com") @fetch
linuxFuture  := URL with("http://www.linux.com")  @fetch

writeln("We are starting to fetch multiple homepages")

writeln("Fetched ", linuxFuture size, " bytes for Linux")
writeln("Fetched ", googleFuture size, " bytes for Google")
