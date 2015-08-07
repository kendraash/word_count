class String
  define_method(:word_count) do
    word_count=0
    sentence_end_puncuation= ["?", ".","!"]
    # if(self.include?(sentence_end_puncuation))
    if self.include?(sentence_end_puncuation[0])
      input=self.split(sentence_end_puncuation[0])
    elsif self.include?(sentence_end_puncuation[1])
      input=self.split(sentence_end_puncuation[1])
    else
      input=self.split(sentence_end_puncuation[2])
    end
    puts input
    sentence=input[0].split(" ")
    # if sentence[0]==[/[A-Z]+/]
    sentence[0].downcase!()

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
