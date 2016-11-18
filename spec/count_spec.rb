require('rspec')
require('./lib/count')

describe('String#count') do
  it('returns 1 when the same word is entered as both the text and the search word') do
    expect('one'.count('one')).to(eq(1))
  end

end
