require './lib/processor'


class Encryptor < Processor

  def call(message, key, date)
    message_letters = message.split("")
    shifts =[assign_shift_a(date), assign_shift_b(date), assign_shift_c(date), assign_shift_d(date)]

    encrypted_message = {encryption: encrypted_message, key: key, date: date}
  end
end
