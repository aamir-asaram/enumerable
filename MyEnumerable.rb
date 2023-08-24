module MyEnumerable
  def all?
    (0...size).each do |i|
      return false unless yield at(i)
    end
    true
  end

  def any?
    (0...size).each do |i|
      return true if yield at(i)
    end
    false
  end

  def filter
    result = MyList.new
    (0...size).each do |i|
      result << at(i) if yield at(i)
    end
    result
  end
end
