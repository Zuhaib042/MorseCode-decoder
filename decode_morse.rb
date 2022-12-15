# decode letters
def decode_char(char)
  dict = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
    'F' => '..-.', 'G' => '--.', 'H' => '....',
    'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }
  dict.key(char)
end

# decode words
def decode_word(str)
  split_code = str.split
  empty = ''
  split_code.each do |ele|
    empty += decode_char(ele)
  end
  empty
end

# decode whole sentence
def decode(str)
  split_code = str.split('   ')
  arr = []
  split_code.each do |ele|
    arr.push(decode_word(ele))
  end
  arr.join(' ')
end
