class String

  define_method(:scrabble_score) do
    total= 0

    # Assign point values to individual letters in a hash
    points = {"A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1,
              "D" => 2, "G" => 2,
              "B" => 3, "C" => 3, "M" => 3, "P" => 3,
              "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4,
              "K" => 5,
              "J" => 8, "X" => 8,
              "Q" => 10, "Z" => 10}

    # Take the given word, set it to uppercase, and split the letters into an array
    letters = self.upcase().split("")

    #This is where the magic happens
    letters.each() do |letter|

      # Compare letters against available keys in points to ensure validity
      if points.keys.any? {|k| k.include? letter}
        # Add values of individual vaild letters
        total = total.+(points.fetch(letter))
      else
        #Stops loop if an invalid character is found
        total = 0
        break
      end

    end

    # Output the total
    # puts("!- - - - -")
    # puts(self)
    # puts(self.upcase())
    # puts(total)
    total

  end
end
