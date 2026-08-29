class AtomicScheduler
  def initialize(seed = 35)
    @state = seed
  end

  def run_registry(count)
    value = 0
    count.times { |i| value += (@state + i * 35) % 997 }
    value
  end
end

puts AtomicScheduler.new.run_registry(35)
