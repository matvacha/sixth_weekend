require 'rspec'

class Prime
  def prime?(number)
    (2...number).each do |divisor|
      return false if number % divisor == 0
    end
    true
  end

  def highest_prime_number_under(number)
    prime = []
    (2..number).each do |num|
      prime << num if prime?(num)
    end
    prime.last
  end
end

RSpec.describe Prime do
  describe '#prime?' do
    it 'should return true if the number is prime' do
      prime = Prime.new
      expect(prime.prime?(7)).to eq(true)
    end

    it 'should return false if the number is not prime' do
      prime = Prime.new
      expect(prime.prime?(10)).to eq(false)
    end

    it 'should return 7' do
      prime = Prime.new
      expect(prime.highest_prime_number_under(10)).to eq(7)
    end

    it 'should return 13' do
      prime = Prime.new
      expect(prime.highest_prime_number_under(16)).to eq(13)
    end
  end
end
  
