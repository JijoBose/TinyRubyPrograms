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


class Casino
  def jackpot(money)
    slot1 = ['duck','chicken','turkey']
    slot2 = ['duck','chicken','turkey']
    slot3 = ['duck','chicken','turkey']

    amount = money

    until amount < 10 do
      hit1 = slot1[rand(0..2)]
      hit2 = slot2[rand(0..2)]
      hit3 = slot3[rand(0..2)]
      print "Enter a 10c coin, \n type '1' to insert and '2' to exit: "
      coin = gets.to_i
      if coin == 1
        if hit1 == hit2 && hit2 == hit3 && hit3 == hit1
          amount += 100
          puts "  Slot:1 = #{hit1}"
          puts "  Slot:2 = #{hit2}"
          puts "  Slot:3 = #{hit3}"
          puts "  Your balance is #{amount}"
          puts "  jackpot..! You win a #{hit1} and 100c, Happy Holidays..\n\n"
        else
          amount -= 10
          puts "  Slot:1 = #{hit1}"
          puts "  Slot:2 = #{hit2}"
          puts "  Slot:3 = #{hit3}"
          puts "  No Luck, try again"
          puts "  Your balance is #{amount}\n\n"
        end
      else
        puts "You have been exited. Your balance is #{amount}"
        break
      end
    end
  end
end

vegas = Casino.new
print "Enter your amount "
amt = gets.to_i
vegas.jackpot(amt)
