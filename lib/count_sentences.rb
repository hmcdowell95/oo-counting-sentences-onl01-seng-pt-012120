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
    self.split(".")
    self.join("?")
    self.split("?")
    self.join("!")
    self.split("!")
    self.delete_if {|a| a = ""}
    self.count
  end
end