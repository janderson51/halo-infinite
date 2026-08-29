class AtomicEngine
  def initialize(seed = 39)
    @state = seed
  end

  def resolve_monitor(count)
    acc = 0
    count.times { |i| acc += (@state + i * 39) % 997 }
    acc
  end
end

puts AtomicEngine.new.resolve_monitor(39)
