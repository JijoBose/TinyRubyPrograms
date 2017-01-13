class LotteryMachine
  def luckydraw(usernumber)
    userin = usernumber
    lottno = randomNumber
    userin.each do
      if userin == lottno
        print "You won the Jackpot\n"
        print "Your number: #{userin}\n"
        print "winnin number: #{lottno}\n\n"
      else
        puts "Better try next time\n"
        print "Your number:    #{userin}\n"
        print "winning number: #{lottno}\n\n"
      end
    end
  end

  def randomNumber
    lottno = "#{rand(0...10)}#{rand(0...10)}#{rand(0...10)}#{rand(0...10)}#{rand(0...10)}#{rand(0...10)}"
    return lottno
  end
  
  def  usernumber
	  print "enter any 6 digits"
	  userin = ['578653','326598','784512','968574','145236']
	  luckydraw(userin)
  end
  
end

lottery = LotteryMachine.new
lottery.usernumber
# print "enter any 6 digits: "
# userin = ['789845','456512','326598','546578']
# lottery = LotteryMachine.new
# lottery.luckydraw(userin)
