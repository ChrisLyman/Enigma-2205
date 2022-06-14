require './lib/processor'

class Decryptor

  def initialize
    @procesor = Processor.new
    @alphabet = ("a".."z").to_a << " "
  end

  def message_decrypt(message, key, date)
    message_array = []
    message_letters = message.split("")
    shifts = [@processor.assign_shift_a(key, date)* -1]
    require "pry"; binding.pry
  end
end
