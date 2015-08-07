class String
  define_method(:word_count) do
    word_count=0
    sentence_end_punctuation= ["?", ".","!"]
    if self.include?(sentence_end_punctuation[0])
      input=self.split(sentence_end_punctuation[0])
    elsif self.include?(sentence_end_punctuation[1])
      input=self.split(sentence_end_punctuation[1])
    else
      input=self.split(sentence_end_punctuation[2])
    end
    sentence=input[0].split(" ")
    sentence[0].downcase!()

    word=input[1].split(" ")
    sentence.length().times do |i|
      if sentence[i]==word[0]
        word_count=word_count+1
      end
    end
    word_count
  end
end
