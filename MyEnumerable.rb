module MyEnumerable
  def all?
    for i in 0...size
      return false unless yield at(i)
    end
    true
  end

  def any?
    for i in 0...size
      return true if yield at(i)
    end
    false
  end

  def filter
    result = MyList.new
    for i in 0...size
      result << at(i) if yield at(i)
    end
    result
  end
end