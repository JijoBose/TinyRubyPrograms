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
  $kmsgg = "Insert Key" #universal key

# verifies the key, if inserted
  def selfkey
    keys = gets.to_i
    return keys
  end

# Opening the door, else you can't start the car
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

# Checks for saftey instructions before starting the engine.
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

# Starts the engine after the door is accessed.
  def engineStatus
    if dashboardStatus == 1
      puts "#{$kmsgg} to start engine"
      engine = selfkey
      if engine == 1
        puts "Engine ON"
        return true
      else
        puts "Engine OFF"
        return false
      end
    else
      puts "Car unable to start without Key"
    end
  end

# drive the car if engine ON and handbrakes released
  def driveCar
    if engineStatus == true
      print "Release the handbrakes"
      hbrakes = gets.to_i
      if hbrakes == 1
        puts "Put to drive"
        return true
      else
        puts "handbrakes not released"
        return false
      end
    elsif engineStatus == false
      puts "Car not started"
      return false
    else
      puts "Something went wrong"
      return false
    end
  end
end

driver = Car.new
driver.driveCar
