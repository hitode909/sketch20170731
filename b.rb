include Java

import java.awt.Robot
import java.awt.MouseInfo

robot = Robot.new

location = nil

loop do
  current_location = MouseInfo.getPointerInfo.getLocation rescue nil
  if current_location
    location = current_location
  end
  x = location.x + (1..6).map{rand - 0.5}.reduce{|a,b| a+b} * 20
  y = location.y + (1..6).map{rand - 0.5}.reduce{|a,b| a+b} * 20
  robot.mouseMove(x, y)
  sleep 0.03
end
