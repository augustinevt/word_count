class String
  def word_count(target)
    self.scan(/\b#{target}\b/).count
  end
end
