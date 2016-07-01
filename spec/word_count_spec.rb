require('rspec')
require('word_count.rb')

describe('String#word_count') do

  it('given a sentence and a target word, it should return the number of times the word is used') do
    expect("target target target".word_count('target')).to eq(3)
  end

  it('given a string with punctuation and a target word it should still return the number of times the target word is used') do
    expect('target, the target was. I am in love; the target loves me too'.word_count("target")).to eq(3)
  end

  it('given a string and a target word it should return only the number of times the target appears as it\'s own word') do
    expect('cat cat cathedral'.word_count("cat")).to eq(2)
  end

  it('given a string and a target word it should return only the number of times the target appears as it\'s own word') do
    expect('cat cat cathedral'.word_count("cat")).to eq(2)
  end

end
