include Java

import java.awt.Robot
import java.awt.GraphicsEnvironment

env = GraphicsEnvironment.getLocalGraphicsEnvironment
window = env.getMaximumWindowBounds

robot = Robot.new

speed = 8.0
radius = 0.0
while (radius < window.width) do
  t = Time.now.to_f
  radius += 2
  x = Math.cos(t * speed) * radius + window.width/2
  x = 0 if x < 0
  x = window.width - 1 if x > window.width
  y = Math.sin(t * speed) * radius + window.height/2
  y = 0 if y < 0
  y = window.height - 1 if y > window.height
  robot.mouseMove(x, y)
  sleep 0.01
end
