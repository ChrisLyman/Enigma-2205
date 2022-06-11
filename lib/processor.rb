class Processor

  def generate_random_code
    rand(99999).to_s.rjust(5, "0")
  end

  def assign_key_a
    random_code = generate_random_code
    key_a = random_code[0...-3]
  end

  def assign_key_b
    random_code = generate_random_code
    key_b = random_code[1...-2]
  end

  def assign_key_c
    random_code = generate_random_code
    key_c = random_code[2...-1]
  end

  def assign_key_d
    random_code = generate_random_code
    key_d = random_code[3..4]
  end

end
