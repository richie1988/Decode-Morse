Morse_Code ={
    ".-"=>"A", "-..."=>"B","-.-."=>"C","-.."=>"D","."=>"E",
    "..-."=>"F","--."=>"G","...."=>"H",".."=>"I",".---"=>"J",
    "-.-"=>"K",".-.."=>"L","--"=>"M","-."=>"N","---"=>"O",
    ".--."=>"P","--.-"=>"Q",".-."=>"R","..."=>"S","-"=>"T",
    "..-"=>"U","...-"=>"V",".--"=>"W","-..-"=>"X","-.--"=>"Y",
    "--.."=>"Z",
    " "=>" "
}
def decode_char(morse_char)
    Morse_Code[morse_char] || ""
end

def decode_word(morse_word)
    morse_word.split(" ").map{|morse_char| decode_char(morse_char)}.join(" ")
end

def decode_message(message_char)
    message_char.split(" ").map{|morse_word| decode_char(morse_word)}.join(" ")
end

message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."

decode_message = decode_message(message)

puts decode_message
