require('rspec')
require('prime')

describe('Fixnum#prime') do
  it('returns an array of prime numbers up to the user-inputted number') do
    expect(11.prime()).to(eq([2,3,5,7,11]))
  end
end
