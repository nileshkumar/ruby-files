class Bird
  def tweet(bird_type)
    bird_type.tweet
  end
end

class Sparrow < Bird
  def tweet
    puts "chirp chirp"
  end
end

class Parrot < Bird
  def tweet
    puts "squak"
  end
end

bird = Bird.new
bird.tweet(Sparrow.new)
bird.tweet(Parrot.new)
