class Processor

  def generate_random_code
    rand(99999).to_s.rjust(5, "0")
  end

  def key_generator(key)
    if key.nil?
      key = generate_random_code
    else
      key
    end
  end

  def assign_key_a(key)
    key_generator(key)[0..1]
  end

  def assign_key_b(key)
    key_generator(key)[1..2]
  end

  def assign_key_c(key)
    key_generator(key)[2..3]
  end

  def assign_key_d(key)
    key_generator(key)[3..4]
  end

  def offset(date)
    if date.length == 6
      number = date.to_i
    else
      number = Time.now.strftime("%d%m%y").to_i
    end
    square_number(number).to_s[-4..-1]

  end

  def square_number(number)
    number ** 2
  end

  def assign_offset_a(date)
    offset(date)[0].to_i
  end

  def assign_offset_b(date)
    offset(date)[1].to_i
  end

  def assign_offset_c(date)
    offset(date)[2].to_i
  end

  def assign_offset_d(date)
    offset(date)[3].to_i
  end

  def assign_shift_a(key, date)
    assign_key_a(key).to_i + assign_offset_a(date)
  end

  def assign_shift_b(key, date)
    assign_key_b(key).to_i + assign_offset_b(date)
  end

  def assign_shift_c(key, date)
    assign_key_c(key).to_i + assign_offset_c(date)
  end

  def assign_shift_d(key, date)
    assign_key_d(key).to_i + assign_offset_d(date)
  end
end
