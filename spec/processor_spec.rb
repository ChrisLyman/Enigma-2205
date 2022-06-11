require './lib/processor'

RSpec.describe Processor do
  describe '#generate random key' do
    it 'can generate a 5 digit random key' do
      processor = Processor.new


      expect(processor.generate_random_code.length).to eq(5)
      expect(processor.generate_random_code.to_i).to be > 0
    end
  end

  describe '#assign key a' do
    it 'assigns 2 digits to key a' do
      processor = Processor.new

      expect(processor.assign_key_a.to_i).to be > 0
      expect(processor.assign_key_a.length).to eq(2)
    end
  end

  describe '#assign key b' do
    it 'assigns 2 digits to key b' do
      processor = Processor.new

      expect(processor.assign_key_b.to_i).to be > 0
      expect(processor.assign_key_b.length).to eq(2)
    end
  end

  describe '#assign key c' do
    it 'assigns 2 digits to key c' do
      processor = Processor.new

      expect(processor.assign_key_c.to_i).to be > 0
      expect(processor.assign_key_c.length).to eq(2)
    end
  end

  describe '#assign key d' do
    it 'assigns 2 digits to key d' do
      processor = Processor.new

      expect(processor.assign_key_d.to_i).to be > 0
      expect(processor.assign_key_d.length).to eq(2)
    end
  end
end
