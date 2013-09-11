class NumberSort
  attr_accessor :int_array
  
  def initialize(integer_array)
    @int_array = integer_array
  end
  
  def sort_array
    $i = 0
    $j = 0
    sort_count = []
    
    while $i < @int_array.length do
      $counter = 0
      $j = 0
      while $j < @int_array.length do
        if @int_array[$i] < @int_array[$j]
          $counter += 1
        end
        $j += 1
      end
      sort_count.push(@int_array.length - $counter)
      $i += 1
    end
    $i = 0
    $j = 0
    new_array = []
    
    while $i < @int_array.length do
      $j = 0
      while $j < @int_array.length do
        if $i == sort_count[$j] - 1
          new_array.push(@int_array[$j])
        end
      $j += 1
      end
      $i += 1
    end
    new_array
  end
end
