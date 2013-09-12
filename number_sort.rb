class NumberSort
  attr_accessor :int_array
  
  def initialize(integer_array)
    @int_array = integer_array
  end
  
  def sort_array
    sort_count = []
    new_array = []
    
    @int_array.each do |n|
      counter = 0
      @int_array.each do |o|
        counter += 1 if n < o
      end
      sort_count.push(@int_array.length - counter - 1)
    end

    sort_count.each_index do |i|
      sort_count.each do |n|
        if i == n
          new_array.push(@int_array[sort_count.index(n)])
        end
      end
    end
    new_array
  end
  
end
