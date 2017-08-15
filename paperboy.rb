class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0.0
  end

  def quota
    50 + (@experience/2)
  end

  def deliver(start_address,end_address)
    #taking two numbers where delivery starts and end to claculate profit
    #total number of homes
    delivery_size = (end_address - start_address + 1)
    if delivery_size < quota
      profit = ( 0.25 * delivery_size ) - 2.0
    elsif delivery_size == quota
      profit = ( 0.25 * delivery_size )
    else
      profit = (0.25 * quota) + (0.50 * (delivery_size - quota))
    end
    @earnings += profit
    @experience +=  delivery_size

  end

  def report
    "Hi, I'm Jimmy. I've delivered #{@experience} and I have earned #{@earnings}"
  end


end

jimmy = Paperboy.new("Jimmy")

puts jimmy.quota
puts jimmy.deliver(1,100)
puts jimmy.report
puts jimmy.quota
puts jimmy.deliver(1,200)
puts jimmy.report
