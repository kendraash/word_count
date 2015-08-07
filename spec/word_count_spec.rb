require('word_count')
require('rspec')

describe('String#word_count') do

  it("It will take a sentence, followed by a word, and calculate the number of times the word appears in teh sentence.") do
    expect("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked? peck".word_count()).to(eq(2))
  end

end
