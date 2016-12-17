class LotteryMachine
  def luckydraw
    print "enter any 6 digits: "
    userin = gets.to_i
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

lottery = LotteryMachine.new
lottery.luckydraw
