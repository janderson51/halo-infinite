class AtomicRegistry
  def initialize(seed = 49)
    @state = seed
  end

  def handle_adapter(count)
    value = 0
    count.times { |i| value += (@state + i * 49) % 997 }
    value
  end
end

puts AtomicRegistry.new.handle_adapter(49)
