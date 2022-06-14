require './spec/spec_helper'

RSpec.describe Processor do
  describe '#initialize' do
    it 'exists' do
      processor = Processor.new

      expect(processor).to be_instance_of(Processor)
    end
  end

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
      key = "12345"

      expect(processor.assign_key_a(key).to_i).to be > 0
      expect(processor.assign_key_a(key).length).to eq(2)
    end
  end

  describe '#assign key b' do
    it 'assigns 2 digits to key b' do
      processor = Processor.new
      key = "12345"

      expect(processor.assign_key_b(key).to_i).to be > 0
      expect(processor.assign_key_b(key).length).to eq(2)
    end
  end

  describe '#assign key c' do
    it 'assigns 2 digits to key c' do
      processor = Processor.new
      key ="12345"

      expect(processor.assign_key_c(key).to_i).to be > 0
      expect(processor.assign_key_c(key).length).to eq(2)
    end
  end

  describe '#assign key d' do
    it 'assigns 2 digits to key d' do
      processor = Processor.new
      key = "12345"

      expect(processor.assign_key_d(key).to_i).to be > 0
      expect(processor.assign_key_d(key).length).to eq(2)
    end
  end

  describe '#offset' do
    it 'generates the offset' do
        processor = Processor.new
        date = "040895"

        expect(processor.offset(date)).to eq("1025")
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
      date = "040895"
      processor.offset(date)

      expect(processor.assign_offset_a(date)).to be >= 0
      expect(processor.assign_offset_a(date).to_s.length). to be(1)
    end
  end

  describe '#assign_offset_b' do
    it 'assigns first digit of offset to offset b' do
      processor = Processor.new
      date = "040895"
      processor.offset(date)

      expect(processor.assign_offset_b(date)).to be >= 0
      expect(processor.assign_offset_b(date).to_s.length). to be(1)
    end
  end

  describe '#assign_offset_c' do
    it 'assigns first digit of offset to offset c' do
      processor = Processor.new
      date = "040895"
      processor.offset(date)

      expect(processor.assign_offset_c(date)).to be >= 0
      expect(processor.assign_offset_c(date).to_s.length). to be(1)
    end
  end

  describe '#assign_offset_d' do
    it 'assigns first digit of offset to offset d' do
      processor = Processor.new
      date = "040895"
      processor.offset(date)

      expect(processor.assign_offset_d(date)).to be >= 0
      expect(processor.assign_offset_d(date).to_s.length). to be(1)
    end
  end

  describe '#shift_a' do
    it 'adds key a to offset a' do
      processor = Processor.new
      date = "040895"
      key = "02715"

      expect(processor.assign_shift_a(key, date)).to be > 0
    end
  end

  describe '#shift_b' do
    it 'adds key b to offset b' do
      processor = Processor.new
      date = "040895"
      key = "02715"

      expect(processor.assign_shift_b(key, date)).to be > 0
    end
  end

  describe '#shift_c' do
    it 'adds key c to offset c' do
      processor = Processor.new
      date = "040895"
      key = "02715"

      expect(processor.assign_shift_c(key, date)).to be > 0
    end
  end

  describe '#shift_d' do
    it 'adds key d to offset d' do
      processor = Processor.new
      date = "040895"
      key = "02715"

      expect(processor.assign_shift_d(key, date)).to be > 0
    end
  end
end
