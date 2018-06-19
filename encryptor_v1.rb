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

  def encrypt(string, rotation)
    encrypted_word = []
    words = string.split
    words.each do |word|
      letter = word.split("")
      word = letter.collect do |l|
        encrypt_letter(l, rotation)
      end
      encrypted_word << word

    end
    encrypted_word.map do |a|
      a.join
    end.join(" ")
  end
end
