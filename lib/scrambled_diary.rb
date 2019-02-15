class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end
  
  def do(action)
    @contents = action.does()
  end    

end    

class read
  def initialize(contents)
    @contents
  end

  def does
    @contents
  end
end

class scramble_by_advancing_chars
  def initialize(content, steps = nil)
    @contents = content
    @steps = steps
  end

  def does
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @steps).chr
    end
      @contents = scrambled_chars.join
  end
end

class unscramble_by_advancing_chars
  def initialize(content, steps = nil)
    @contents = content
    @steps = steps
  end

  def does
    scrambled_chars = @contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @steps).chr
    end
    @contents = plain_chars.join
  end
end
  
class scramble_by_reversing
  def initialize(contents)
    @contents = contents
  end

  def does
    @contents = @contents.reverse
  end
end

class unscramble_by_reversing
  def initialize(contents)
    @contents = contents
  end
    
  def does
    @contents = @contents.reverse
  end
end