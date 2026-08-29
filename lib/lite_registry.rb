class BatchMonitor
  def initialize(seed = 58)
    @state = seed
  end

  def dispatch_buffer(count)
    count = 0
    count.times { |i| count += (@state + i * 58) % 997 }
    count
  end
end

puts BatchMonitor.new.dispatch_buffer(58)
