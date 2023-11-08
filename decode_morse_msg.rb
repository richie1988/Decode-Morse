MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z',
  ' ' => ' '
}.freeze

def decode_char(morse_char)
  MORSE_CODE[morse_char] || '' # Return the corresponding character or an empty string if not found
end

# Method to decode a whole word in Morse code
def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

# Method to decode an entire message in Morse code
def decode_message(morse_message)
  morse_message.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ')
end

# Morse code message from the old bottle
message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode_message(message)

puts decoded_message
