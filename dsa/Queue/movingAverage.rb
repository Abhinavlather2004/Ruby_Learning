# Moving Average from Data Stream: Given a stream of integers and a window size, calculate the moving average of all integers in the sliding window.

class MovingAverage
  def initialize(size)
    @size = size
    @queue = []
    @sum = 0
  end

  def next(val)
    @queue.push(val)
    @sum += val

    if @queue.size > @size
      @sum -= @queue.shift
    end

    @sum.to_f/@queue.size
  end
end

moving_average = MovingAverage.new(3)
puts moving_average.next(1)  #(Average of [1])
puts moving_average.next(10) #(Average of [1, 10])
puts moving_average.next(3)  #(Average of [1, 10, 3])
puts moving_average.next(5)  #(Average of [10, 3, 5])

