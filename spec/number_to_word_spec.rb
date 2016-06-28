require('number_to_word')
require('rspec')

describe('Fixnum#num_to_word') do
  it("returns a word for a single digit") do
    expect(9.num_to_word()).to(eq('nine'))
  end
  it("returns a word for a number up to twenty") do
    expect(18.num_to_word()).to(eq('eighteen'))
  end
  it("returns a word for a number less than one hundred") do
    expect(54.num_to_word()).to(eq('fifty four'))
  end
  it("returns a word for a number less than one thousand") do
    expect(678.num_to_word()).to(eq('six hundred seventy eight'))
  end
  it("returns a word for a number less than ten thousand") do
    expect(3746.num_to_word()).to(eq('three thousand seven hundred forty six'))
  end
  it("returns a word for a number less than one hundred thousand") do
    expect(83746.num_to_word()).to(eq('eighty three thousand seven hundred forty six'))
  end
  it("returns a word for a thousand") do
    expect(1000.num_to_word()).to(eq('one thousand'))
  end
  it("returns a word for a number less than one million") do
    expect(283746.num_to_word()).to(eq('two hundred eighty three thousand seven hundred forty six'))
  end
end
