$ques = ["First Q","Second Q, Third Question"]
$ans = [1,2,1]

def calculation
  option = gets.to_i
  for i in $ans
    if $ans[i] == i
      puts "win"
      puts "Next question"
      i++
    else
      puts "lose"
      puts "Next question"
      i++
    end
  end

end

calculation
