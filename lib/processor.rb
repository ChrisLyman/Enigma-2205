class Processor

  attr_reader :random_code

  def initialize
    @random_code = generate_random_code

  end

  def generate_random_code
    rand(99999).to_s.rjust(5, "0")
  end

  def assign_key_a
    key_a = @random_code[0..1]
  end

  def assign_key_b
    key_b = @random_code[1..2]
  end

  def assign_key_c
    key_c = @random_code[2..3]
  end

  def assign_key_d
    key_d = @random_code[3..4]
  end

  def offset(date)
    number = date.strftime("%d%m%y").to_i
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

  def assign_shift_a(date)
    assign_key_a.to_i + assign_offset_a(date)
  end

  def assign_shift_b(date)
    assign_key_b.to_i + assign_offset_b(date)
  end

  def assign_shift_c(date)
    assign_key_c.to_i + assign_offset_c(date)
  end

  def assign_shift_d(date)
    assign_key_d.to_i + assign_offset_d(date)
  end
end
