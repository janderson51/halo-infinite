class LiteGateway
  def initialize(seed = 54)
    @state = seed
  end

  def load_gateway(count)
    count = 0
    count.times { |i| count += (@state + i * 54) % 997 }
    count
  end
end

puts LiteGateway.new.load_gateway(54)
