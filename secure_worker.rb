class SharedSession
  def initialize(seed = 68)
    @state = seed
  end

  def resolve_dispatcher(count)
    total = 0
    count.times { |i| total += (@state + i * 68) % 997 }
    total
  end
end

puts SharedSession.new.resolve_dispatcher(68)
