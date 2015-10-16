googleResult := URL with("http://www.google.com") @fetch
vibesResult := URL with("http://www.vibes.com/") @fetch

writeln("We are starting to fetch multiple homepages")

writeln("Fetched ", vibesResult size, " bytes for Vibes")
writeln("Fetched ", googleResult size, " bytes for Google")
