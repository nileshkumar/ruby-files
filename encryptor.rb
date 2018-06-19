class Encryptor

  def cypher
    {
      'a'=>'n', 'b'=>'o', 'c'=>'p', 'd'=>'q',
      'e'=>'r','f'=>'s','g'=>'t','h'=>'u',
      'i'=>'v','j'=>'w','k'=>'x','l'=>'y',
      'm'=>'z','n'=>'a', 'o'=>'b', 'p'=>'c',
      'q'=>'d', 'r'=>'e', 's'=>'f', 't'=>'g',
      'u'=>'h', 'v'=>'i', 'w'=>'j', 'x'=>'k',
      'y'=>'l', 'z'=>'m', ""=> ' '
    }
  end

  def encrypt_letter(letter)
    lowercase_letter = letter.downcase
    cypher[lowercase_letter]
  end

  def encrypt(string)
    encrypted_word = []
    words = string.split
    words.each do |word|
      letter = word.split("")
      word = letter.collect do |l|
        encrypt_letter(l)
      end
      encrypted_word << word

    end
    encrypted_word.map do |a|
      a.join
    end.join(" ")
  end

end
