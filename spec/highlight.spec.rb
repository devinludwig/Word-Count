require('rspec')
require('./lib/count')

describe('String#highlight') do
  it('returns input string with <strong> html tags around all instances of a search word argument') do
    expect('"One lone ranger" hones the bone all alone! Will he telephone the crone? She is long gone.'.highlight('one')).to(eq('"<strong>One</strong> l<strong>one</strong> ranger" h<strong>ones</strong> the b<strong>one</strong> all al<strong>one</strong>! Will he teleph<strong>one</strong> the cr<strong>one</strong>? She is long g<strong>one</strong>.'))
  end
end
