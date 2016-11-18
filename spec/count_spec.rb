require('rspec')
require('./lib/count')

describe('String#count') do
  it('returns 1 when the same word is entered as both the text and the search word') do
    expect('one'.count('one')).to(eq(1))
  end
  it('returns the count of a word when a word is entered as the text multiple times') do
    expect('one one one'.count('one')).to(eq(3))
  end
end
