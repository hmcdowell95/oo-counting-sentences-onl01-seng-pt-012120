require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    a = self.split(".")
    b = a.join("?")
    c = b.split("?")
    d = c.join("!")
    e = d.split("!")
    e.collect do |x|
      if x = ""
        e.delete("")
      end
    end
  end
end