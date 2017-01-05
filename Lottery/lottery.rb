class LotteryMachine
  def luckydraw(ticketno)
    userin = ticketno
    lottno = "#{rand(0...10)}#{rand(0...10)}#{rand(0...10)}#{rand(0...10)}#{rand(0...10)}#{rand(0...10)}"
    if userin == lottno
      print "You won the Jackpot\n"
      print "Your number: #{userin}\n"
      print "winnin number: #{lottno}\n"
    else
      puts "Better try next time\n"
      print "Your number:    #{userin}\n"
      print "winning number: #{lottno}\n"
    end
  end
end

print "enter any 6 digits: "
userin = gets.to_i
lottery = LotteryMachine.new
lottery.luckydraw(userin)
