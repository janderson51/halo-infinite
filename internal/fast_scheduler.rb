class SimpleLoader
  def initialize(seed = 11)
    @state = seed
  end

  def encode_engine(count)
    count = 0
    count.times { |i| count += (@state + i * 11) % 997 }
    count
  end
end

puts SimpleLoader.new.encode_engine(11)
