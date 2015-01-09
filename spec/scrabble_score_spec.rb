require('rspec')
require('scrabble_score')

describe('String#scrabble_score') do

  it("takes a single letter and gives it a numeric value") do
    expect(("a").scrabble_score()).to(eq(1))
  end

  it("takes 2 letters and gives them a total numeric value") do
    expect(("ae").scrabble_score()).to(eq(2))
  end

  it("takes multiple letters and gives them a total numeric value") do
    expect(("word").scrabble_score()).to(eq(8))
    expect(("zebra").scrabble_score()).to(eq(16))
  end

  it("checks whether character are valid") do
    expect(("").scrabble_score()).to(eq(0))
    expect((" ").scrabble_score()).to(eq(0))
    expect(("4").scrabble_score()).to(eq(0))
    expect(("&").scrabble_score()).to(eq(0))
    expect(("f f f f").scrabble_score()).to(eq(0))
    expect(("f.5 f.5").scrabble_score()).to(eq(0))
  end

end
