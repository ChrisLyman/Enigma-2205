require './lib/encryptor'

RSpec.describe Encryptor do
  describe '#initialize' do
    it 'exists' do
      encryptor = Encryptor.new

      expect(encryptor). to be_instance_of(Encryptor)
    end
  end

  describe '#call' do
    it 'will encrypt a message' do
      encryptor = Encryptor.new
      processor = Processor.new

      expect(encryptor.call("hello world", "02715", "040895")).to eq({encryption: "keder ohulw", key: "02715", date: "040895"})
    end
  end
end
