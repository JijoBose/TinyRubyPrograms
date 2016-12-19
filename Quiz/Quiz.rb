################################################################################
#  TinyRubyPrograms is a collection of tiny programs written in Ruby.
#  Copyright (C) 2016  Jijo Bose
#
#  TinyRubyPrograms is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  TinyRubyPrograms is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with TinyRubyPrograms.  If not, see <http://www.gnu.org/licenses/>
################################################################################

class Quiz

  def initialize(answer)
    @answer = answer
    
  end

  def quizquest
    quest = ['First question','Second question']
    options = [["1: answer1","2: answer2"],["1: answer1","2: answer2"]]
    answ = [1,2]
    inc = 0

    answ.each do
      puts "#{quest[inc]}"
      op1 = 0
      op2 = 1
      puts "Your Options:\n #{options[op1][op1]}\n #{options[op1][op2]}"
      usrinc = gets.to_i
      if answ[inc] == usrinc
        puts "Correct"
        puts ""
      else
        puts "incorrect\n"
        puts ""
      end
      inc += 1
    end
  end
end

audience = Quiz.new
audience.questions
