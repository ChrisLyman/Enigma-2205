class Processor

  attr_reader :random_code

  def initialize
    @random_code = generate_random_code
  end

  def generate_random_code
    rand(99999).to_s.rjust(5, "0")
  end

  def assign_key_a
    key_a = @random_code[0...-3]
  end

  def assign_key_b
    key_b = @random_code[1...-2]
  end

  def assign_key_c
    key_c = @random_code[2...-1]
  end

  def assign_key_d
    key_d = @random_code[3..4]
  end
end
