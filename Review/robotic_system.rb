# Given a grid of size m * n and robot is paced at n-1 and m-1 aloso given a string at str only the character of U, D , L , R representing the moves the robot is
# going to perform task is to find robot will be safe at the end of the last move
#initially robot is facing upward

def is_valid(str, m, n)
  x = n - 1
  y = m - 1

  str.each_char do |moving|
    case moving
    when 'L'
      x -= 1
    when 'R'
      x += 1
    when 'U'
      y -= 1
    when 'D'
      y += 1
    end

    if x < 0 || y < 0 || x >= n || y >= m
      return false
    end
  end
  return [y, x].inspect
end

str = "UDLLUUDDL"
puts is_valid(str, 5, 4)

