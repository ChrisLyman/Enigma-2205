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

  describe '#offset' do
    it 'generates the offset' do
        processor = Processor.new
        date = Time.now
        offset = (Time.now.strftime("%d%m%y").to_i ** 2).to_s[-4..-1]
        expect(processor.offset(date)).to eq(offset)
    end
  end

  describe '#square_number' do
    it 'can square a number' do
      processor = Processor.new

    expect(processor.square_number(2)).to eq(4)
    end
  end

  describe '#assign_offset_a' do
    it 'assigns first digit of offset to offset a' do
      processor = Processor.new
      date = Time.now
      processor.offset(date)

      expect(processor.assign_offset_a(date)).to be >= 0
      expect(processor.assign_offset_a(date).to_s.length). to be(1)
    end
  end

  describe '#assign_offset_b' do
    it 'assigns first digit of offset to offset b' do
      processor = Processor.new
      date = Time.now
      processor.offset(date)

      expect(processor.assign_offset_b(date)).to be >= 0
      expect(processor.assign_offset_b(date).to_s.length). to be(1)
    end
  end

  describe '#assign_offset_c' do
    it 'assigns first digit of offset to offset c' do
      processor = Processor.new
      date = Time.now
      processor.offset(date)

      expect(processor.assign_offset_c(date)).to be >= 0
      expect(processor.assign_offset_c(date).to_s.length). to be(1)
    end
  end

  describe '#assign_offset_d' do
    it 'assigns first digit of offset to offset d' do
      processor = Processor.new
      date = Time.now
      processor.offset(date)

      expect(processor.assign_offset_d(date)).to be >= 0
      expect(processor.assign_offset_d(date).to_s.length). to be(1)
    end
  end

  describe '#shift_a' do
    it 'adds key a to offset a' do
      processor = Processor.new
      date = Time.now

      expect(processor.assign_shift_a(date)).to be > 0
    end
  end

  describe '#shift_b' do
    it 'adds key b to offset b' do
      processor = Processor.new
      date = Time.now

      expect(processor.assign_shift_b(date)).to be > 0
    end
  end

  describe '#shift_c' do
    it 'adds key c to offset c' do
      processor = Processor.new
      date = Time.now

      expect(processor.assign_shift_c(date)).to be > 0
    end
  end

  describe '#shift_d' do
    it 'adds key d to offset d' do
      processor = Processor.new
      date = Time.now

      expect(processor.assign_shift_d(date)).to be > 0
    end
  end
end
