class String
  define_method(:word_count) do
    word_count=0
    input=self.split("?")
    puts input
    sentence=input[0].split(" ")
    word=input[1].split(" ")
    puts word
    sentence.length().times do |i|
      if sentence[i]==word[0]
        word_count=word_count+1
      end
    end
    word_count
  end
end
