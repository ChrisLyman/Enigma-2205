require './lib/processor'


class Encryptor

  def initialize
    @processor = Processor.new
    @alphabet = ("a".."z").to_a << " "
  end
  def call(message, key, date)
    message_array = []
    counter = 0
    shifts =[@processor.assign_shift_a(key, date), @processor.assign_shift_b(key, date), @processor.assign_shift_c(key, date), @processor.assign_shift_d(key,date)]
    message_letters = message.split("")

    message_letters.each do |letter|
      counter = 0 if counter > 4
      counter += 1
      if counter == 1
        new_index = (@alphabet.index(letter) + shifts[0]) % 27
        message_array << @alphabet[new_index]
      elsif counter == 2
        new_index = (@alphabet.index(letter) + shifts[1]) % 27
        message_array << @alphabet[new_index]
      elsif counter == 3
        new_index = (@alphabet.index(letter) + shifts[2]) % 27
        message_array << @alphabet[new_index]
      elsif counter == 4
        new_index = (@alphabet.index(letter) + shifts[3]) % 27
        message_array << @alphabet[new_index]
        counter = 0
      end
    end
    encrypted_message = message_array.join
    {encryption: encrypted_message, key: key, date: date}
  end
end
