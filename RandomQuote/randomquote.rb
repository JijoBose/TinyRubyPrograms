def quotemachine(inquotes)
  puts inquotes[rand(0..3)]
end

quotes = ["Live life as if it's your last","Ruby a day keeps problems away",
          "More Linux, more freedom","More opensource, more improvement"]

quotemachine(quotes)
