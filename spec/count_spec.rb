require('rspec')
require('./lib/count')

describe('String#count') do
  it('returns 1 when the same word is entered as both the text and the search word') do
    expect('one'.count('one')).to(eq(1))
  end
  it('returns the count of a word when a word is entered as the text multiple times') do
    expect('one one one'.count('one')).to(eq(3))
  end
  it('returns the count of a search word when the text includes other words') do
    expect('one two three four one two three'.count('one')).to(eq(2))
  end
  it('functions when the search word is capitalized in the text') do
    expect('One two one two One two'.count('one')).to(eq(3))
  end
  it('counts search word even when embedded in another word or surrounded by punctuation') do
    expect('"One lone ranger" hones the bone all alone! Will he telephone the crone? She is long gone.'.count('one')).to(eq(8))
  end
  it('counts search word multiple times if it appears embedded multiple times in another word') do
    expect('lonetonebonecronephonecone'.count('one')).to(eq(6))
  end
end
