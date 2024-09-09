
def caesar_cipher(string, shift)
  # Return an error message if the input is not valid
  return "Please enter a valid string or factor" unless shift.to_i <= 26

  # Shift each character in the string
  result = string.chars.map do |char|
    if char.between?('a', 'z')
      ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
    elsif char.between?('A', 'Z')
      ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
    else
      char  # Leave non-alphabet characters unchanged
    end
  end

  result.join  # Join the result into a single string
end

# Example usage
puts caesar_cipher("M", 4)   # => "Q"

