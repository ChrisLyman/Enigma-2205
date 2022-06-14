require './spec/spec_helper'

RSpec.describe Decryptor do
  describe '#initialize' do
    it 'exists' do
      decryptor = Decryptor.new

      expect(decryptor).to be_instance_of(Decryptor)
    end
  end

  describe '#message decrypt' do
    it ' will decrypt a message' do 
      decryptor = Decryptor.new
      processor = Processor.new


      expect(decryptor.message_decrypt("keder ohulw", "02715", "040895")).to eq({decryption: "hello world", key: "02715", date: "040895"})
    end
  end
end
