require 'pry'

class String

  def sentence?
    self.end_with?('!', '.', '?')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!') ? true : false
  end

  def count_sentences
    self.split(/[.?!]+/).grep(/\S/).count
  end
end

#'Hi, my name is Sophie'.sentence?

#"What's your name?".question?

#'Happy Halloween!'.question?

#'Hi, my name is Sophie!'.exclamation? # true

#'Hi, my name is Sophie'.exclamation? # false

#'one. two. three?'.count_sentences # 3

#"".count_sentences # 0

complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
complex_string.count_sentences # 4