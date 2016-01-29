class School 
  attr_accessor :hash

  def initialize
    @hash = {}
  end

  def to_h
    returned_hash = {}
    @hash.sort.each { |k, v| returned_hash[k] = @hash[k].sort }
    returned_hash
  end

  def add(name, grade)
    if @hash.has_key? grade
      @hash[grade] << name
    else
      @hash[grade] = [name]
    end
  end

  def grade(number)
    @hash[number] || []
  end

end