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

class CreditRatio

  def initialize(debt, assets)
    @debt = debt
    @assets = assets

    def acceptvalues
      _debt = @debt
      _assets = @assets
      score = (_debt.to_f/_assets.to_f)*100
      puts score.to_f
      return score.to_f
    end

    def creditScore
      return case acceptvalues
          when 00..10 then puts "Credit Rating: AAA"
          when 11..20 then puts "Credit Rating: AA"
          when 21..30 then puts "Credit Rating: A"
          when 31..40 then puts "Credit Rating: BBB"
          when 41..50 then puts "Credit Rating: BB"
          when 51..60 then puts "Credit Rating: B"
          when 61..70 then puts "Credit Rating: CCC"
          when 71..80 then puts "Credit Rating: CC"
          when 81..90 then puts "Credit Rating: C"
          when 91..100 then puts "Credit Rating: D"
      else "No data"
      end
    end
  end
end


puts "debt"
_debts = gets.to_i
puts "assets"
_assetv = gets.to_i

finance = CreditRatio.new("#{_debts}","#{_assetv}");
finance.creditScore
