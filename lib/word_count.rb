class String
  def word_count(target)
    self.scan(/\b#{target}\b/i).count
  end
end
