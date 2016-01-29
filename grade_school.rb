class School 
  attr_accessor :hash

  def initialize
    @hash = {}
  end

  def to_h
    returned_hash = {}
    @hash.sort.each { |k, v| returned_hash[k] = @hash[k].sort }
    @hash = returned_hash
  end

  def add(name, grade)
    @hash.has_key?(grade) ? @hash[grade] << name : @hash[grade] = [name]
  end

  def grade(number)
    @hash[number] || []
  end
end