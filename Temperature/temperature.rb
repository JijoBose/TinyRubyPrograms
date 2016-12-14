def celsius(temp)
  celsius = temp.to_f
  fahrenheit = (celsius * 9 / 5) + 32
  puts "The result is: "
  puts fahrenheit
end

print "Enter the temperature in celsius "
temper = gets.to_f
celsius(temper)
