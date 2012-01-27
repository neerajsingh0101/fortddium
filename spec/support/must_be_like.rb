class Object
  def must_be_like other
    gsub(/\s+/, ' ').strip.must_equal other.gsub(/\s+/, ' ').strip
  end
end
