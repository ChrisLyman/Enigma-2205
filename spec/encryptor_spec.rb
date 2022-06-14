require './spec/spec_helper'

RSpec.describe Encryptor do
  describe '#initialize' do
    it 'exists' do
      encryptor = Encryptor.new

      expect(encryptor). to be_instance_of(Encryptor)
    end
  end

  describe '#message_encrypt' do
    it 'will encrypt a message' do
      encryptor = Encryptor.new
      processor = Processor.new

      expect(encryptor.message_encrypt("hello world", "02715", "040895")).to eq({encryption: "keder ohulw", key: "02715", date: "040895"})
    end
  end
end
