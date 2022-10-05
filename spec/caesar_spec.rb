require './lib/caesar_cipher.rb'

describe '#caesar_cipher(string, shift)' do
  it 'adjusts an all-lowercase string without wrap-overs' do
    expect(caesar_cipher('hello there', 2)).to eql('jgnnq vjgtg')
  end

  it 'adjusts a string with wrap-overs' do
    expect(caesar_cipher('hello there', 24)).to eql('fcjjm rfcpc')
  end

  it 'adjusts a string with uppercase and lowercase letters (and wrap-overs)' do
    expect(caesar_cipher('Hello There', 24)).to eql('Fcjjm Rfcpc')
  end

  it 'ignores punctuation without screwing everything else up' do
    expect(caesar_cipher('Hello There!', 24)).to eql('Fcjjm Rfcpc!')
  end
end
