require './lib/encryptor'

RSpec.describe Encryptor do
  describe '#call' do
    it '' do
      encryptor = Encryptor.new
      processor = Processor.new

      expect(encryptor.call("hello world", "02715", "040895")).to eq({encryption: "keder ohulw",
                                                                                         key: "02715",
                                                                                        date: "040895"})
    end
  end
end
