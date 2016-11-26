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

class Car
  $kmsgg = "Insert Key"

  def selfkey
    keys = gets.to_i
    return keys
  end

  def openDoor
    puts msg = "#{$kmsgg} to open door"
    opened = selfkey
    if opened == 1
      puts "Door Opened"
      return 1
    elsif opened == 0
      puts "No Key to Open Door"
      return 0
    else
      puts "Unable to open the Door"
      return 0
    end
  end

  def engineStatus
    if dashboardStatus == 1
      puts "#{$kmsgg} to start engine"
      engine = selfkey
      if engine == 1
        puts "Engine ON"
      else
        puts "Engine OFF"
      end
    else
      puts "Car unable to start without Key"
    end
  end

  def dashboardStatus
    if openDoor == 1
      puts "Fasten your seatbelts"
      status = gets.to_i
      if status == 1
        puts "Thanks, lets start the engine"
        return 1
      else
        puts "Saftey first"
        return 0
      end
    else
      puts "Open the door first"
    end
  end

end

driver = Car.new
driver.engineStatus
