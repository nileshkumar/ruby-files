class Encryptor

  def cypher(rotation)
    letters = ('a'..'z').to_a
    letter_enc = ('a'..'z').to_a.rotate(rotation)
    letters.zip(letter_enc).to_h
  end

  def encrypt_letter(letter, rotation)
    lowercase_letter = letter.downcase
    rotated_letters = cypher(rotation)
    rotated_letters[lowercase_letter]
  end

  def encrypt_file(file_name, rotation)
    encrypted_word = []
    input_file = File.open(file_name, "r")
    file_content = input_file.read
    words = file_content.split
    words.each do |word|
      letter = word.split("")
      word = letter.collect do |l|
        encrypt_letter(l, rotation)
      end
      encrypted_word << word

    end
    encrypted = encrypted_word.map do |a|
      a.join
    end.join(" ")

    output_file = File.open("encrypted_file.txt", "w")
    output_file.write(encrypted)
    output_file.close
  end

end
